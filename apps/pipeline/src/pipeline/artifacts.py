"""
pipeline.artifacts — JSON read/write helpers for pipeline artifacts.

All functions use only the Python stdlib; no extra dependencies.
"""

from __future__ import annotations

import json
import os
import tempfile
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def write_json_artifact(path: Path, payload: Any) -> None:
    """Write *payload* as pretty-printed UTF-8 JSON to *path*.

    Parent directories are created automatically.
    """
    path.parent.mkdir(parents=True, exist_ok=True)
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            json.dump(payload, handle, indent=2, ensure_ascii=False)
            handle.flush()
            os.fsync(handle.fileno())
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


def validate_complete_extraction(payload: Any, *, allow_failed: bool = False) -> None:
    """Reject incomplete or failed extraction artifacts as consumer inputs."""
    if isinstance(payload, dict):
        summary = payload.get("summary", {})
        if not allow_failed and (payload.get("status") == "failed" or summary.get("error_count", 0) > 0):
            raise ValueError("extraction artifact contains failed target posts")
    pending = payload.get("summary", {}).get("pending_count") if isinstance(payload, dict) else None
    if pending is not None and pending != 0:
        raise ValueError(f"incomplete extraction artifact: pending_count={pending}")


def read_json_artifact(path: Path) -> Any:
    """Read and decode a JSON artifact from *path*."""
    return json.loads(path.read_text(encoding="utf-8"))


def timestamp_slug() -> str:
    """Return a sortable filename-safe timestamp string.

    Example: ``20260713T153045Z``
    """
    return datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
