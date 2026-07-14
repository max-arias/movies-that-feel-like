"""
pipeline.git_ops — Auto-commit and push pipeline-emitted data migrations.

Provides :func:`auto_commit_and_push`, called by :mod:`pipeline.load` after a
new data migration is written to ``packages/db/migrations/``. The pipeline is
the only writer of those files, so this module is the only committer of them.
"""

from __future__ import annotations

import subprocess
from pathlib import Path

from pipeline.paths import project_root

_GIT_TIMEOUT_S = 30


class GitOpsError(Exception):
    """Raised when git operations cannot complete (e.g. dirty working tree)."""


def _run_git(args: list[str], timeout: int = _GIT_TIMEOUT_S) -> subprocess.CompletedProcess:
    """Run *args* as a git subcommand under the repo root.

    Returns the ``CompletedProcess``.  Raises ``GitOpsError`` on timeout.
    """
    root = project_root()
    try:
        return subprocess.run(
            ["git", *args],
            capture_output=True,
            text=True,
            cwd=str(root),
            timeout=timeout,
        )
    except subprocess.TimeoutExpired as exc:
        raise GitOpsError(
            f"git command timed out after {timeout}s: git {' '.join(args)}"
        ) from exc


def auto_commit_and_push(migration_path: Path) -> tuple[bool, str]:
    """Stage *migration_path*, commit it, and push to origin/HEAD.

    Returns ``(committed, status_message)``:
    - ``(True, "pushed")`` — commit and push both succeeded.
    - ``(True, "pushed=False: <error>")`` — commit succeeded, push failed (best-effort).
    - ``(False, "<reason>")`` — commit was not made (rare; e.g. nothing to commit).

    Raises :class:`GitOpsError` if the working tree has uncommitted changes
    OTHER than the migration file itself.  The error message names the dirty
    files so the dev can clean up.
    """
    root = project_root()

    # Resolve migration path relative to the repo root for git commands.
    try:
        rel_path = migration_path.resolve().relative_to(root.resolve())
    except ValueError:
        raise GitOpsError(
            f"Migration path {migration_path} is not under the repo root {root}"
        )

    # ── Dirty-tree check ──────────────────────────────────────────────
    # Exclude the migration file itself from the dirty check.  Try the
    # modern `':!path'` pathspec exclude syntax first; fall back to
    # filtering the output in Python.
    status_cmd = ["status", "--porcelain", "--", "':!{}'".format(rel_path)]
    result = _run_git(status_cmd)

    # If the pathspec-exclude syntax failed (non-zero exit), fall back to
    # plain `git status --porcelain` and filter out the migration file.
    if result.returncode != 0:
        result = _run_git(["status", "--porcelain"])
        dirty_lines = [
            line
            for line in result.stdout.splitlines()
            if line.strip()
            and rel_path.as_posix() not in line
        ]
    else:
        dirty_lines = [
            line for line in result.stdout.splitlines() if line.strip()
        ]

    if dirty_lines:
        joined = "\n".join(dirty_lines)
        raise GitOpsError(
            f"Working tree has uncommitted changes outside the migration file.\n"
            f"Clean up these files first (stash, commit, or discard):\n"
            f"{joined}"
        )

    # ── Stage ─────────────────────────────────────────────────────────
    add_result = _run_git(["add", "--", str(rel_path)])
    if add_result.returncode != 0:
        raise GitOpsError(
            f"Failed to stage {rel_path}: {add_result.stderr.strip()}"
        )

    # ── Commit ────────────────────────────────────────────────────────
    commit_msg = "data: {}".format(migration_path.name)
    commit_result = _run_git(["commit", "-m", commit_msg])

    if commit_result.returncode != 0:
        stderr = commit_result.stderr.strip()
        # Common "nothing to commit" case
        if "nothing to commit" in stderr:
            return (False, "no commit was made (file already committed?)")
        raise GitOpsError(
            f"Failed to commit {rel_path}: {stderr}"
        )

    # ── Push (best-effort) ────────────────────────────────────────────
    push_result = _run_git(["push", "origin", "HEAD"])
    if push_result.returncode != 0:
        stderr = push_result.stderr.strip()
        return (True, f"pushed=False: {stderr}")

    return (True, "pushed")
