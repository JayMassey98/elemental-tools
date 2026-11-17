#!/usr/bin/env python3
"""Write the release notes: your own text (optional) plus every commit since the previous release.

GitHub's built-in "generate notes" only lists merged pull requests, so commits pushed straight to a
branch would be missing. This lists the commits themselves.

Usage:
  build_release_notes.py --tag v1.2.0 --sha <commit> [--notes "text"] --out notes.md [--repo owner/name]
"""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

MAX_COMMITS = 100
# Commit subjects that are noise in a changelog (work-in-progress saves, merges).
SKIP = re.compile(r"^(wip\b|merge\b)", re.IGNORECASE)


def git(*args: str) -> str:
    return subprocess.run(["git", *args], check=True, capture_output=True, text=True).stdout.strip()


def previous_tag(tag: str, sha: str) -> str | None:
    """The newest v* tag reachable from sha, other than `tag` itself."""
    try:
        tags = git("tag", "--merged", sha, "--list", "v*", "--sort=-creatordate").splitlines()
    except subprocess.CalledProcessError:
        return None
    return next((t for t in tags if t != tag), None)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--tag", required=True)
    parser.add_argument("--sha", required=True)
    parser.add_argument("--notes", default="")
    parser.add_argument("--out", required=True)
    parser.add_argument("--repo", default="", help="owner/name, for the compare link")
    args = parser.parse_args()

    previous = previous_tag(args.tag, args.sha)
    span = f"{previous}..{args.sha}" if previous else args.sha
    log = git("log", "--no-merges", f"-n{MAX_COMMITS * 3}", "--pretty=format:%s%x09%h", span)
    commits = []
    for line in log.splitlines():
        subject, _, short = line.rpartition("\t")
        if subject and not SKIP.match(subject):
            commits.append(f"- {subject} (`{short}`)")
    shown = commits[:MAX_COMMITS]

    parts = []
    if args.notes.strip():
        parts.append(args.notes.strip())
    parts.append("## Changes\n\n" + ("\n".join(shown) if shown else "- No notable changes."))
    if len(commits) > len(shown):
        parts.append(f"_…and {len(commits) - len(shown)} more commits._")
    if previous and args.repo:
        parts.append(f"**Full changelog**: https://github.com/{args.repo}/compare/{previous}...{args.tag}")
    Path(args.out).write_text("\n\n".join(parts) + "\n", encoding="utf-8")
    print(f"Release notes for {args.tag}: {len(shown)} commits since {previous or 'the beginning'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())