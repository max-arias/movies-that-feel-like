"""
pipeline.enrich_cache — On-disk JSONL cache for TMDB / IGDB lookups.

Stores every successful provider resolution by ``candidate_key`` so that
subsequent enrichment runs can skip HTTP calls for already-resolved titles.

File format (JSONL, append-only, one entry per line)::

    {"key": "...", "match": {...}, "cached_at": "2026-07-14T15:50:00Z"}

Usage
-----
.. code-block:: python

    from pipeline.enrich_cache import ProviderCache, make_cache

    cache = ProviderCache(Path("data/working/caches/provider-cache.jsonl"))
    cached = cache.get("pulp fiction|1994|movie")
    if cached is None:
        match = …  # HTTP call
        cache.put("pulp fiction|1994|movie", match)
    else:
        match = cached
    cache.close()
"""

from __future__ import annotations

import argparse
import asyncio
import json
import os
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.paths import working_dir


class ProviderCache:
    """JSONL-backed cache for provider match records.

    Parameters
    ----------
    path
        Path to the JSONL cache file.
    enabled
        When ``False``, :meth:`get` always returns ``None`` and :meth:`put` is a
        no-op.  Use this for the ``--no-cache`` / force-refresh path.
    """

    def __init__(self, path: Path, *, enabled: bool = True) -> None:
        self._path = path
        self._enabled = enabled
        self._entries: dict[str, dict] = {}
        self._fh: Any = None  # file handle, opened lazily on first put

        if not enabled:
            return

        # Load existing entries if the file exists
        if path.exists():
            self._load()

    # ── Public API ──────────────────────────────────────────────────────

    async def get(self, key: str) -> dict | None:
        """Return the cached match record for *key*, or ``None``.

        When the cache is disabled, always returns ``None``.
        """
        if not self._enabled:
            return None
        return self._entries.get(key)

    async def put(self, key: str, match: dict) -> None:
        """Append *match* for *key* to the cache file and update in-memory index.

        The file I/O runs in a thread so it does not block the event loop.
        On-disk format is identical to the sync version.
        """
        if not self._enabled:
            return

        # Update in-memory index immediately (last write wins)
        self._entries[key] = match

        # File I/O via thread to avoid blocking the event loop
        await asyncio.to_thread(self._put_sync, key, match)

    def _put_sync(self, key: str, match: dict) -> None:
        """Synchronous file append — runs in a thread via ``asyncio.to_thread``."""
        record = {
            "key": key,
            "match": match,
            "cached_at": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        }
        line = json.dumps(record, ensure_ascii=False) + "\n"

        # Open file handle on first write
        if self._fh is None:
            self._path.parent.mkdir(parents=True, exist_ok=True)
            self._fh = open(self._path, "a", encoding="utf-8")  # noqa: SIM115

        self._fh.write(line)
        self._fh.flush()
        os.fsync(self._fh.fileno())

    def close(self) -> None:
        """Close the cache file handle if open.  Idempotent."""
        if self._fh is not None:
            self._fh.close()
            self._fh = None

    # ── Context manager support ─────────────────────────────────────────

    def __enter__(self) -> ProviderCache:
        return self

    def __exit__(self, *exc_args: Any) -> None:
        self.close()

    # ── Internal helpers ────────────────────────────────────────────────

    def _load(self) -> None:
        """Read existing cache entries from *path*.

        Malformed lines are skipped with a warning.  Last write wins for
        duplicate keys.
        """
        with open(self._path, "r", encoding="utf-8") as fh:
            for line_no, line in enumerate(fh, start=1):
                stripped = line.strip()
                if not stripped:
                    continue
                try:
                    record = json.loads(stripped)
                except json.JSONDecodeError:
                    print(
                        f"[enrich_cache] WARNING: skipping malformed line {line_no} "
                        f"in {self._path}",
                        file=sys.stderr,
                    )
                    continue

                if not isinstance(record, dict) or "key" not in record or "match" not in record:
                    print(
                        f"[enrich_cache] WARNING: skipping invalid record on line {line_no} "
                        f"in {self._path} (missing key/match fields)",
                        file=sys.stderr,
                    )
                    continue

                self._entries[record["key"]] = record["match"]


def make_cache(args: argparse.Namespace) -> ProviderCache:
    """Build a :class:`ProviderCache` from parsed CLI arguments.

    Respects ``--no-cache`` and ``--cache-path`` flags.

    *args* may also be a plain object with ``no_cache`` and ``cache_path``
    attributes (useful in tests).
    """
    no_cache = getattr(args, "no_cache", False)
    cache_path = getattr(args, "cache_path", None)

    if no_cache:
        return ProviderCache(Path("/dev/null"), enabled=False)

    if cache_path is not None:
        path = Path(cache_path)
    else:
        path = working_dir() / "caches" / "provider-cache.jsonl"

    return ProviderCache(path)
