"""
pipeline.artifacts — JSON read/write helpers for pipeline artifacts.

All functions use only the Python stdlib; no extra dependencies.
"""

from __future__ import annotations

import json
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def write_json_artifact(path: Path, payload: Any) -> None:
    """Write *payload* as pretty-printed UTF-8 JSON to *path*.

    Parent directories are created automatically.
    """
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False),
        encoding="utf-8",
    )


def read_json_artifact(path: Path) -> Any:
    """Read and decode a JSON artifact from *path*."""
    return json.loads(path.read_text(encoding="utf-8"))


def timestamp_slug() -> str:
    """Return a sortable filename-safe timestamp string.

    Example: ``20260713T153045Z``
    """
    return datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
