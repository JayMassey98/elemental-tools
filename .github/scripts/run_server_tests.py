#!/usr/bin/env python3
"""Run the Elemental Tools tests on a real, headless Minecraft server.

Steps:
  1. Download the version's server.jar (checked against its SHA-1, cached).
  2. Stage the data pack (with its real pack.mcmeta overlays) and the tests pack
     into a fresh world. Only `max_format` is widened, so snapshots whose pack
     format is newer than the declared one still load.
  3. Start the server, run `/function elemental_tools_test:harness/start`, and
     read the ET_* result lines the tests print to the server log.
  4. Stop the server and report. Fails when a test fails, when any pack file
     logs a load error (broken recipe, tag, function...), or when no result
     arrives.

Exit codes: 0 = all tests passed, 1 = failures or problems.
"""

from __future__ import annotations

import argparse
import json
import os
import queue
import re
import shutil
import subprocess
import sys
import threading
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from build_version_pack import download_server_jar  # noqa: E402
from generate_test_runner import generate  # noqa: E402

PACK_NAMES = ("elemental_tools", "elemental_tools_test")
START_COMMAND = "function elemental_tools_test:harness/start"
WIDE_MAX_FORMAT = [9999, 0]

SERVER_PROPERTIES = """\
online-mode=false
enforce-secure-profile=false
spawn-protection=0
spawn-monsters=false
spawn-animals=false
spawn-npcs=false
allow-nether=false
generate-structures=false
view-distance=4
simulation-distance=4
max-players=1
max-tick-time=-1
pause-when-empty-seconds=-1
sync-chunk-writes=false
enable-rcon=false
enable-query=false
server-port=25599
initial-enabled-packs=vanilla,file/elemental_tools,file/elemental_tools_test
"""

# A line like "[12:00:00] [Server thread/ERROR]: ..." that mentions one of our packs.
LOG_LEVEL_RE = re.compile(r"/(ERROR|WARN|FATAL)\]")


def widen_max_format(mcmeta_path: Path) -> None:
    data = json.loads(mcmeta_path.read_text(encoding="utf-8"))
    data["pack"]["max_format"] = WIDE_MAX_FORMAT
    data["pack"].pop("supported_formats", None)
    mcmeta_path.write_text(json.dumps(data, indent=2), encoding="utf-8")


def stage_data_pack(repo: Path, destination: Path) -> None:
    """Copy the shipped pack: pack.mcmeta, data/, and every overlay folder."""
    destination.mkdir(parents=True)
    shutil.copyfile(repo / "pack.mcmeta", destination / "pack.mcmeta")
    shutil.copytree(repo / "data", destination / "data")
    mcmeta = json.loads((repo / "pack.mcmeta").read_text(encoding="utf-8"))
    for entry in mcmeta.get("overlays", {}).get("entries", []):
        directory = entry["directory"]
        shutil.copytree(repo / directory, destination / directory)
    widen_max_format(destination / "pack.mcmeta")


# Files every tests pack must have. If they are missing, the tests folder was not fully updated.
REQUIRED_TEST_FILES = (
    "harness/start.mcfunction",
    "harness/run.mcfunction",
    "harness/fail.mcfunction",
    "harness/end_test.mcfunction",
    "assert/block.mcfunction",
)
# Left over from the earlier vanilla GameTest attempt. They are not used and would only add load errors.
LEGACY_GAMETEST_FOLDERS = ("test_instance", "test_environment", "structure")


def stage_tests_pack(tests: Path, destination: Path) -> int:
    function_dir = tests / "data" / "elemental_tools_test" / "function"
    missing = [name for name in REQUIRED_TEST_FILES if not (function_dir / name).is_file()]
    if missing:
        raise SystemExit(
            f"The tests folder is missing {', '.join(missing)}. "
            f"Copy the whole tests/ folder from the test harness zip into the repo, then try again.")
    shutil.copytree(tests, destination, ignore=shutil.ignore_patterns(*LEGACY_GAMETEST_FOLDERS))
    count = generate(destination)  # never run a stale test list
    widen_max_format(destination / "pack.mcmeta")
    return count


def write_summary(markdown: str) -> None:
    path = os.environ.get("GITHUB_STEP_SUMMARY")
    if path:
        with open(path, "a", encoding="utf-8") as handle:
            handle.write(markdown + "\n")


class Server:
    """A server process with a reader thread, so waiting never blocks forever."""

    def __init__(self, command: list[str], cwd: Path, log_path: Path):
        self.log_file = open(log_path, "w", encoding="utf-8")
        self.lines: queue.Queue[str | None] = queue.Queue()
        self.process = subprocess.Popen(
            command, cwd=cwd, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT, text=True, bufsize=1, encoding="utf-8", errors="replace",
        )
        threading.Thread(target=self._read, daemon=True).start()

    def _read(self) -> None:
        for line in self.process.stdout:
            line = line.rstrip("\n")
            self.log_file.write(line + "\n")
            self.log_file.flush()
            self.lines.put(line)
        self.lines.put(None)  # the server closed its output

    def send(self, command: str) -> None:
        try:
            self.process.stdin.write(command + "\n")
            self.process.stdin.flush()
        except (BrokenPipeError, OSError):
            pass

    def wait_for(self, marker: str, timeout: float, collected: list[str]) -> str | None:
        """Collect lines until one contains `marker`. Returns it, or None on timeout/exit."""
        deadline = time.monotonic() + timeout
        while True:
            remaining = deadline - time.monotonic()
            if remaining <= 0:
                return None
            try:
                line = self.lines.get(timeout=min(remaining, 1.0))
            except queue.Empty:
                continue
            if line is None:
                return None
            collected.append(line)
            if marker in line:
                return line

    def stop(self) -> None:
        self.send("stop")
        try:
            self.process.wait(timeout=90)
        except subprocess.TimeoutExpired:
            self.process.kill()
            self.process.wait()
        try:
            self.process.stdin.close()
        except (BrokenPipeError, OSError):
            pass
        self.log_file.close()


def analyse(lines: list[str]) -> dict:
    result = {"fails": [], "skips": 0, "counts": None, "result": None, "errors": [], "load_errors": [], "load_warnings": []}
    for line in lines:
        if "ET_FAIL " in line:
            result["fails"].append(line.split("ET_FAIL ", 1)[1].strip())
        elif "ET_SKIP " in line:
            result["skips"] += 1
        elif "ET_COUNTS " in line:
            result["counts"] = line.split("ET_COUNTS ", 1)[1].strip()
        elif "ET_RESULT " in line:
            result["result"] = line.split("ET_RESULT ", 1)[1].strip()
        elif "ET_ERROR " in line:
            result["errors"].append(line.split("ET_ERROR ", 1)[1].strip())
        elif any(name in line for name in PACK_NAMES):
            level = LOG_LEVEL_RE.search(line)
            if level and level.group(1) in ("ERROR", "FATAL"):
                result["load_errors"].append(line)
            elif level:
                result["load_warnings"].append(line)
    return result


def escape(text: str) -> str:
    return text.replace("%", "%25").replace("\r", "%0D").replace("\n", "%0A")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--version", required=True, help="Minecraft version id, for messages")
    parser.add_argument("--server-url", required=True)
    parser.add_argument("--sha1", required=True)
    parser.add_argument("--cache-dir", default=".mc-cache")
    parser.add_argument("--repo", default=".")
    parser.add_argument("--tests-dir", default="tests")
    parser.add_argument("--work-dir", default="server-run")
    parser.add_argument("--java", default="java")
    parser.add_argument("--startup-timeout", type=float, default=300)
    parser.add_argument("--test-timeout", type=float, default=180)
    parser.add_argument("--server-jar", help="testing only: use this jar instead of downloading")
    args = parser.parse_args()

    repo = Path(args.repo).resolve()
    work = Path(args.work_dir).resolve()
    if work.exists():
        shutil.rmtree(work)
    datapacks = work / "world" / "datapacks"
    datapacks.mkdir(parents=True)

    jar = Path(args.server_jar) if args.server_jar else download_server_jar(
        args.server_url, args.sha1, Path(args.cache_dir).resolve())
    stage_data_pack(repo, datapacks / "elemental_tools")
    test_count = stage_tests_pack(Path(args.tests_dir).resolve(), datapacks / "elemental_tools_test")
    (work / "eula.txt").write_text("eula=true\n", encoding="utf-8")
    (work / "server.properties").write_text(SERVER_PROPERTIES, encoding="utf-8")
    print(f"Staged the data pack and {test_count} tests for Minecraft {args.version}")

    server = Server([args.java, "-Xmx2G", "-jar", str(jar), "nogui"], work, work / "server-output.log")
    lines: list[str] = []
    problem = None
    try:
        if server.wait_for("Done (", args.startup_timeout, lines) is None:
            problem = "The server did not finish starting"
        else:
            server.send(START_COMMAND)
            if server.wait_for("ET_RESULT", args.test_timeout, lines) is None:
                problem = "The tests did not report a result (see the server log below)"
                # Show which data packs the server actually has enabled, to help diagnose.
                server.send("datapack list")
                server.wait_for("\0never\0", 3, lines)
            # Give the log a moment to flush anything printed right after the result line.
            server.wait_for("\0never\0", 2, lines)
    finally:
        server.stop()
        # Anything the server printed while stopping can still hold load errors.
        while not server.lines.empty():
            line = server.lines.get()
            if line is not None:
                lines.append(line)

    found = analyse(lines)
    for warning in found["load_warnings"][:20]:
        print(f"::warning title=Pack log warning ({args.version})::{escape(warning)}")
    for error in found["load_errors"]:
        print(f"::error title=Pack failed to load ({args.version})::{escape(error)}")
    for error in found["errors"]:
        print(f"::error title=Test harness ({args.version})::{escape(error)}")
    for failure in found["fails"]:
        print(f"::error title=Test failed ({args.version})::{escape(failure)}")

    ok = (problem is None and found["result"] == "PASSED" and not found["fails"]
          and not found["load_errors"] and not found["errors"])
    totals = found["counts"] or "no totals reported"
    status = "🟢 passed" if ok else "🔴 failed"
    write_summary(f"{status} `{args.version}`: {totals}, {len(found['load_errors'])} pack load errors")

    if problem:
        print(f"::error title=Server test run ({args.version})::{problem}")
        print("---- last 60 server log lines ----")
        print("\n".join(lines[-60:]))
    print(f"Minecraft {args.version}: {totals}; result={found['result']}; "
          f"{len(found['fails'])} failures; {len(found['load_errors'])} pack load errors")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
