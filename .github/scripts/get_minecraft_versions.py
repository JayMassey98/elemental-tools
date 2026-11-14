#!/usr/bin/env python3
"""Discover the Minecraft versions the Elemental Tools CI should target.

Reads Mojang's version_manifest_v2.json, selects versions by *release time*
(never by comparing ID strings), then fetches each selected version's own JSON
to collect the Java runtime and server.jar download details.

Selection rules (defaults match Stage 1 of the roadmap):
  * every official release from --release-from onward
  * every snapshot / pre-release / release candidate released strictly after
    the release time of --snapshot-after

Outputs (written to $GITHUB_OUTPUT when set, otherwise printed):
  versions  JSON array of exact version IDs, oldest first
  matrix    JSON object {"include": [{id, kind, java, server_url, sha1}, ...]}
  count     number of selected versions
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
import time
import urllib.error
import urllib.request
from concurrent.futures import ThreadPoolExecutor

MANIFEST_URL = "https://piston-meta.mojang.com/mc/game/version_manifest_v2.json"

# GitHub Actions rejects matrices with more than 256 jobs.
MAX_MATRIX_JOBS = 256

# Release IDs: 1.21.11, 26.1, 26.1.2
RELEASE_RE = re.compile(r"^\d+\.\d+(\.\d+)?$")
# New-style development builds (26.1 onward): 26.4-snapshot-1, 26.4-pre-2, 26.4-rc-1
NEW_SNAPSHOT_RE = re.compile(r"^\d+\.\d+(\.\d+)?-(snapshot|pre|rc)-\d+$")
# Legacy 1.21.x development builds: 25w45a, 1.21.9-pre1, 1.21.9-rc1
LEGACY_SNAPSHOT_RE = re.compile(r"^(\d\dw\d\d[a-z]|\d+\.\d+(\.\d+)?-(pre|rc)\d+)$")


def fetch_json(url: str, retries: int = 4) -> dict:
    last_error: Exception | None = None
    for attempt in range(retries):
        try:
            request = urllib.request.Request(url, headers={"User-Agent": "elemental-tools-ci"})
            with urllib.request.urlopen(request, timeout=30) as response:
                return json.load(response)
        except (urllib.error.URLError, TimeoutError, json.JSONDecodeError) as error:
            last_error = error
            time.sleep(2**attempt)
    raise RuntimeError(f"Failed to fetch {url}: {last_error}")


def select_versions(manifest: dict, release_from: str, snapshot_after: str,
                    include_legacy_snapshots: bool) -> list[dict]:
    """Return manifest entries to test, sorted oldest to newest by releaseTime."""
    entries = {entry["id"]: entry for entry in manifest["versions"]}

    for name, version_id in (("--release-from", release_from), ("--snapshot-after", snapshot_after)):
        if version_id not in entries:
            raise SystemExit(f"{name} version '{version_id}' is not in the manifest")

    release_floor = entries[release_from]["releaseTime"]
    snapshot_floor = entries[snapshot_after]["releaseTime"]

    # Legacy (pre-26.1) snapshots are only wanted when backdating (Stage 6).
    snapshot_patterns = [NEW_SNAPSHOT_RE]
    if include_legacy_snapshots:
        snapshot_patterns.append(LEGACY_SNAPSHOT_RE)

    selected = []
    for entry in manifest["versions"]:
        version_id, kind, released = entry["id"], entry["type"], entry["releaseTime"]
        # Mojang uses a consistent "+00:00" ISO 8601 offset, so string comparison is safe.
        if kind == "release" and RELEASE_RE.match(version_id) and released >= release_floor:
            selected.append(entry)
        elif kind == "snapshot" and any(p.match(version_id) for p in snapshot_patterns) \
                and released > snapshot_floor:
            selected.append(entry)

    selected.sort(key=lambda e: (e["releaseTime"], e["id"]))
    return selected


def describe(entry: dict) -> dict:
    """Fetch the per-version JSON and extract what later stages need."""
    detail = fetch_json(entry["url"])
    server = detail.get("downloads", {}).get("server")
    java = detail.get("javaVersion", {}).get("majorVersion")
    if server is None:
        raise RuntimeError(f"{entry['id']} has no server download")
    if java is None:
        raise RuntimeError(f"{entry['id']} has no javaVersion")
    return {
        "id": entry["id"],
        "kind": "release" if entry["type"] == "release" else "snapshot",
        "java": int(java),
        "server_url": server["url"],
        "sha1": server["sha1"],
    }


def write_output(name: str, value: str) -> None:
    path = os.environ.get("GITHUB_OUTPUT")
    if path:
        with open(path, "a", encoding="utf-8") as handle:
            handle.write(f"{name}={value}\n")
    else:
        print(f"{name}={value}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--release-from", default="1.21.9", help="first release to include")
    parser.add_argument("--snapshot-after", default="26.3",
                        help="include snapshots released after this version's release time")
    parser.add_argument("--legacy-snapshots", action="store_true",
                        help="also include pre-26.1 snapshot names (Stage 6)")
    parser.add_argument("--manifest", default=MANIFEST_URL, help="manifest URL or local file path")
    args = parser.parse_args()

    if os.path.exists(args.manifest):
        with open(args.manifest, encoding="utf-8") as handle:
            manifest = json.load(handle)
    else:
        manifest = fetch_json(args.manifest)

    selected = select_versions(manifest, args.release_from, args.snapshot_after, args.legacy_snapshots)
    if not selected:
        raise SystemExit("No versions selected; refusing to emit an empty matrix")
    if len(selected) > MAX_MATRIX_JOBS:
        raise SystemExit(f"{len(selected)} versions exceeds the {MAX_MATRIX_JOBS}-job matrix limit")

    with ThreadPoolExecutor(max_workers=8) as pool:
        include = list(pool.map(describe, selected))

    ids = [item["id"] for item in include]
    write_output("versions", json.dumps(ids, separators=(",", ":")))
    write_output("matrix", json.dumps({"include": include}, separators=(",", ":")))
    write_output("count", str(len(ids)))

    summary_path = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary_path:
        with open(summary_path, "a", encoding="utf-8") as handle:
            handle.write(f"### Target Minecraft versions ({len(ids)})\n\n")
            handle.write("| Version | Kind | Java |\n|---|---|---|\n")
            for item in include:
                handle.write(f"| `{item['id']}` | {item['kind']} | {item['java']} |\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())