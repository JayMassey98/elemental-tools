#!/usr/bin/env python3
"""Build the data pack zip that players download.

The zip contains the pack exactly as Minecraft expects it: `pack.mcmeta` at the top,
then `data/` and every overlay folder listed in pack.mcmeta. Development files
(`.github/`, `tests/`, `spyglass.json`, git files, build output) are left out.

The zip is reproducible: the same files always give the same bytes.

Usage:
  build_release_zip.py --version v1.2.3 [--repo .] [--out dist]

Writes <out>/Elemental-Tools-<version>.zip. Fails if the result is not a valid pack.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
import zipfile
from pathlib import Path

NAME = "Elemental-Tools"

# Top-level names that are never shipped.
EXCLUDED = {
    ".github", ".armour", "tests", "spyglass.json", "armour.json",
    ".git", ".gitignore", ".gitattributes", ".vs", ".vscode", ".idea",
    "node_modules", "build", "dist", "server-run", ".mc-cache", ".spyglass-cache",
}
# Anything else at the top level that is not the pack itself is reported, in case it was added by mistake.
EXPECTED_FILES = re.compile(r"^(pack\.mcmeta|pack\.png|license.*|readme.*|changelog.*)$", re.IGNORECASE)

FIXED_TIME = (2020, 1, 1, 0, 0, 0)  # keeps the zip reproducible


def collect(repo: Path, overlay_dirs: set[str]) -> tuple[list[Path], list[str]]:
    files: list[Path] = []
    unexpected: list[str] = []
    for entry in sorted(repo.iterdir(), key=lambda p: p.name):
        if entry.name in EXCLUDED or entry.name.startswith("."):
            continue
        if entry.is_dir():
            if entry.name != "data" and entry.name not in overlay_dirs:
                unexpected.append(entry.name + "/")
            files.extend(sorted(p for p in entry.rglob("*") if p.is_file()))
        else:
            if not EXPECTED_FILES.match(entry.name):
                unexpected.append(entry.name)
            files.append(entry)
    return files, unexpected


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--version", required=True, help="tag or label used in the file name, e.g. v1.2.3")
    parser.add_argument("--repo", default=".")
    parser.add_argument("--out", default="dist")
    args = parser.parse_args()

    repo = Path(args.repo).resolve()
    mcmeta_path = repo / "pack.mcmeta"
    if not mcmeta_path.is_file():
        raise SystemExit("pack.mcmeta is missing from the repository root")
    mcmeta = json.loads(mcmeta_path.read_text(encoding="utf-8"))
    overlay_dirs = {e["directory"] for e in mcmeta.get("overlays", {}).get("entries", [])}
    for directory in sorted(overlay_dirs):
        if not (repo / directory / "data").is_dir():
            raise SystemExit(f"pack.mcmeta lists overlay '{directory}' but {directory}/data does not exist")
    if not (repo / "data").is_dir():
        raise SystemExit("the data/ folder is missing")

    safe_version = re.sub(r"[^A-Za-z0-9._-]+", "-", args.version).strip("-")
    if not safe_version:
        raise SystemExit(f"'{args.version}' is not usable in a file name")
    out_dir = Path(args.out).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    target = out_dir / f"{NAME}-{safe_version}.zip"

    files, unexpected = collect(repo, overlay_dirs)
    with zipfile.ZipFile(target, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path in files:
            info = zipfile.ZipInfo(path.relative_to(repo).as_posix(), FIXED_TIME)
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o644 << 16
            archive.writestr(info, path.read_bytes())

    # Check the finished zip, not the plan.
    with zipfile.ZipFile(target) as archive:
        names = archive.namelist()
        if archive.testzip() is not None:
            raise SystemExit("the zip is corrupt")
    if "pack.mcmeta" not in names:
        raise SystemExit("pack.mcmeta is not at the top of the zip")
    for directory in sorted(overlay_dirs):
        if not any(n.startswith(f"{directory}/data/") for n in names):
            raise SystemExit(f"overlay '{directory}' has no files in the zip")
    leaked = [n for n in names if n.split("/", 1)[0] in EXCLUDED]
    if leaked:
        raise SystemExit(f"development files ended up in the zip: {leaked[:5]}")

    size_kib = target.stat().st_size / 1024
    print(f"Built {target.name}: {len(names)} files, {size_kib:.0f} KiB")
    print(f"Contains data/ and overlays: {', '.join(sorted(overlay_dirs)) or 'none'}")
    for item in unexpected:
        print(f"::warning title=Unexpected file in the pack::{item} is shipped in the zip. "
              f"Add it to EXCLUDED in build_release_zip.py if it should not be.")

    output = os.environ.get("GITHUB_OUTPUT")
    if output:
        with open(output, "a", encoding="utf-8") as handle:
            handle.write(f"zip_path={target}\nzip_name={target.name}\n")
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary:
        with open(summary, "a", encoding="utf-8") as handle:
            handle.write(f"📦 `{target.name}`: {len(names)} files, {size_kib:.0f} KiB\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
