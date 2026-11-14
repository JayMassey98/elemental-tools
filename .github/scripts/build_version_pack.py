#!/usr/bin/env python3
"""Flatten the data pack the way Minecraft would load it for one game version.

Tools such as Spyglass do not understand pack.mcmeta overlays, so for each
version we build a plain pack: the root `data/` first, then every overlay whose
format range contains that version's data pack format, applied in the order they
are listed in pack.mcmeta (later overlays overwrite earlier files).

The data pack format comes from the `version.json` file inside Mojang's server
jar (Mojang's launcher JSON does not carry it). The jar is downloaded, checked
against its SHA-1 and cached, so a later stage can reuse the same file.

Usage:
  build_version_pack.py --server-url URL --sha1 SHA1 --cache-dir .mc-cache \
      --out build/pack --source-map build/source-map.json [--repo .]

For tests, `--pack-version '<json>'` replaces the download. `pack_version` looks like
  {"data_major": 94, "data_minor": 1, ...}   (26.1 onward)
  {"resource": 64, "data": 81}               (older)
  81                                         (oldest)

Outputs the flattened pack plus a JSON map {flattened path: repo path}.
"""

from __future__ import annotations

import argparse
import hashlib
import io
import json
import os
import shutil
import sys
import time
import urllib.error
import urllib.request
import zipfile
from pathlib import Path

# A bare integer upper bound such as `"max_format": 88` covers every minor version of 88.
MINOR_INFINITY = 10**9

Format = tuple[int, int]


def sha1_of(path: Path) -> str:
    digest = hashlib.sha1()
    with open(path, "rb") as handle:
        for chunk in iter(lambda: handle.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def download_server_jar(url: str, sha1: str, cache_dir: Path) -> Path:
    """Download the server jar into cache_dir/<sha1>.jar, verifying its SHA-1."""
    cache_dir.mkdir(parents=True, exist_ok=True)
    target = cache_dir / f"{sha1}.jar"
    if target.exists() and sha1_of(target) == sha1:
        print(f"Using cached server jar {target.name}")
        return target

    last_error: Exception | None = None
    for attempt in range(4):
        partial = target.with_suffix(".part")
        try:
            request = urllib.request.Request(url, headers={"User-Agent": "elemental-tools-ci"})
            with urllib.request.urlopen(request, timeout=60) as response, open(partial, "wb") as handle:
                shutil.copyfileobj(response, handle)
            if sha1_of(partial) != sha1:
                raise RuntimeError("SHA-1 mismatch")
            partial.replace(target)
            print(f"Downloaded server jar {target.name}")
            return target
        except (urllib.error.URLError, TimeoutError, OSError, RuntimeError) as error:
            last_error = error
            time.sleep(2**attempt)
    raise SystemExit(f"Failed to download {url}: {last_error}")


def read_version_json(jar_path: Path) -> dict:
    """Return the version.json inside a server jar (also looks inside a bundler jar's nested jar)."""
    with zipfile.ZipFile(jar_path) as jar:
        names = jar.namelist()
        if "version.json" in names:
            return json.loads(jar.read("version.json"))
        for name in names:
            if name.startswith("META-INF/versions/") and name.endswith(".jar"):
                with zipfile.ZipFile(io.BytesIO(jar.read(name))) as inner:
                    if "version.json" in inner.namelist():
                        return json.loads(inner.read("version.json"))
    shown = ", ".join(names[:15])
    raise SystemExit(f"No version.json inside {jar_path.name}. First entries: {shown}")


def data_format(pack_version) -> Format:
    """Normalise Mojang's `pack_version` into a (major, minor) data pack format."""
    if isinstance(pack_version, bool) or pack_version is None:
        raise SystemExit(f"Cannot work out the data pack format from {pack_version!r}")
    if isinstance(pack_version, int):
        return (pack_version, 0)
    if isinstance(pack_version, dict):
        if "data_major" in pack_version:
            return (int(pack_version["data_major"]), int(pack_version.get("data_minor", 0)))
        if "data" in pack_version:
            return (int(pack_version["data"]), 0)
    raise SystemExit(f"Cannot work out the data pack format from {pack_version!r}")


def as_format(value, upper: bool) -> Format:
    if isinstance(value, int):
        return (value, MINOR_INFINITY if upper else 0)
    if isinstance(value, list) and len(value) == 2:
        return (int(value[0]), int(value[1]))
    raise SystemExit(f"Unrecognised pack format value: {value!r}")


def overlay_range(entry: dict) -> tuple[Format, Format]:
    """Return the inclusive (low, high) format range an overlay entry applies to."""
    low: Format = (0, 0)
    high: Format = (MINOR_INFINITY, MINOR_INFINITY)
    if "min_format" in entry:
        low = as_format(entry["min_format"], upper=False)
    if "max_format" in entry:
        high = as_format(entry["max_format"], upper=True)
    legacy = entry.get("formats")  # 1.20.2 - 1.21.8 style
    if legacy is not None:
        if isinstance(legacy, int):
            low, high = (legacy, 0), (legacy, MINOR_INFINITY)
        elif isinstance(legacy, list) and len(legacy) == 2:
            low, high = (int(legacy[0]), 0), (int(legacy[1]), MINOR_INFINITY)
        elif isinstance(legacy, dict):
            low = (int(legacy["min_inclusive"]), 0)
            high = (int(legacy["max_inclusive"]), MINOR_INFINITY)
        else:
            raise SystemExit(f"Unrecognised overlay formats value: {legacy!r}")
    return low, high


def copy_tree(source: Path, destination: Path, repo: Path, source_map: dict[str, str]) -> int:
    count = 0
    for path in sorted(source.rglob("*")):
        if not path.is_file():
            continue
        relative = path.relative_to(source.parent)  # keeps the leading `data/`
        target = destination / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(path, target)
        source_map[relative.as_posix()] = path.relative_to(repo).as_posix()
        count += 1
    return count


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--repo", default=".", help="repository root (contains pack.mcmeta and data/)")
    parser.add_argument("--server-url", help="Mojang server.jar URL for this version")
    parser.add_argument("--sha1", help="expected SHA-1 of the server jar")
    parser.add_argument("--cache-dir", default=".mc-cache", help="where server jars are cached")
    parser.add_argument("--pack-version", help="testing only: pack_version JSON instead of downloading")
    parser.add_argument("--out", required=True, help="directory to build the flattened pack in")
    parser.add_argument("--source-map", help="write {flattened path: repo path} JSON here")
    args = parser.parse_args()

    if args.pack_version is not None:
        pack_version = json.loads(args.pack_version)
    elif args.server_url and args.sha1:
        jar = download_server_jar(args.server_url, args.sha1, Path(args.cache_dir))
        pack_version = read_version_json(jar).get("pack_version")
    else:
        raise SystemExit("Give either --server-url and --sha1, or --pack-version")

    repo = Path(args.repo).resolve()
    out = Path(args.out).resolve()
    fmt = data_format(pack_version)

    mcmeta = json.loads((repo / "pack.mcmeta").read_text(encoding="utf-8"))
    entries = mcmeta.get("overlays", {}).get("entries", [])

    if out.exists():
        shutil.rmtree(out)
    out.mkdir(parents=True)
    source_map: dict[str, str] = {}

    shutil.copyfile(repo / "pack.mcmeta", out / "pack.mcmeta")
    # spyglass.json (lint rules) travels with the pack so Spyglass picks it up.
    if (repo / "spyglass.json").exists():
        shutil.copyfile(repo / "spyglass.json", out / "spyglass.json")

    applied = [f"data/ ({copy_tree(repo / 'data', out, repo, source_map)} files)"]
    for entry in entries:
        directory = entry.get("directory")
        if not directory:
            raise SystemExit(f"Overlay entry has no directory: {entry!r}")
        low, high = overlay_range(entry)
        if not (low <= fmt <= high):
            continue
        overlay_data = repo / directory / "data"
        if not overlay_data.is_dir():
            raise SystemExit(f"pack.mcmeta lists overlay '{directory}' but {overlay_data} does not exist")
        applied.append(f"{directory}/ ({copy_tree(overlay_data, out, repo, source_map)} files)")

    if args.source_map:
        Path(args.source_map).parent.mkdir(parents=True, exist_ok=True)
        Path(args.source_map).write_text(json.dumps(source_map, indent=1), encoding="utf-8")

    label = f"{fmt[0]}.{fmt[1]}"
    print(f"Data pack format {label}: applied {' + '.join(applied)}")
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    if summary:
        with open(summary, "a", encoding="utf-8") as handle:
            handle.write(f"Data pack format `{label}` → {' + '.join(applied)}\n\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())