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
from datetime import datetime, timedelta, timezone
from pathlib import Path
from typing import Any

from pipeline.paths import working_dir

CANDIDATE_KEY_VERSION = 1
RESOLVER_VERSION = "1"
PAYLOAD_SCHEMA_VERSION = 1
CACHE_TTLS = {
    "matched": timedelta(days=90),
    "not_found": timedelta(days=7),
}
CACHE_COLUMNS = (
    "provider", "candidate_key", "candidate_key_version", "query_title",
    "query_year", "query_media_type", "language", "include_adult",
    "resolver_version", "outcome", "provider_record_id", "resolved_type",
    "resolved_title", "resolved_year", "normalized_payload", "fetched_at",
    "fresh_until", "source_run_id", "source_artifact_checksum",
    "payload_schema_version",
)


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

    def __init__(self, path: Path, *, enabled: bool = True,
                 snapshot: list[dict[str, Any]] | None = None) -> None:
        self._path = path
        self._enabled = enabled
        self._entries: dict[str, dict] = {}
        self._fh: Any = None  # file handle, opened lazily on first put
        self._snapshot: dict[tuple, dict[str, Any]] = {}

        if not enabled:
            return

        # Load existing entries if the file exists
        if path.exists():
            self._load()
        for row in snapshot or []:
            if isinstance(row, dict) and row.get("outcome") in ("matched", "not_found"):
                self._set_snapshot_row(row)

    # ── Public API ──────────────────────────────────────────────────────

    async def get(self, key: str) -> dict | None:
        """Return the cached match record for *key*, or ``None``.

        When the cache is disabled, always returns ``None``.
        """
        if not self._enabled:
            return None
        return self._entries.get(key)

    @staticmethod
    def identity(row: dict[str, Any]) -> tuple:
        return (row.get("provider"), row.get("candidate_key"),
                row.get("candidate_key_version"), row.get("query_title"),
                row.get("query_year"), row.get("query_media_type"),
                row.get("language", "en-US"), bool(row.get("include_adult", False)),
                row.get("resolver_version"))

    @staticmethod
    def _snapshot_order(row: dict[str, Any]) -> tuple[datetime, int]:
        """Return the ordering used when duplicate snapshot identities exist."""
        try:
            fetched_at = datetime.fromisoformat(str(row["fetched_at"]).replace("Z", "+00:00"))
            if fetched_at.tzinfo is None:
                fetched_at = fetched_at.replace(tzinfo=timezone.utc)
        except (KeyError, TypeError, ValueError):
            fetched_at = datetime.min.replace(tzinfo=timezone.utc)
        try:
            row_id = int(row.get("id", -1))
        except (TypeError, ValueError):
            row_id = -1
        return fetched_at, row_id

    def _set_snapshot_row(self, row: dict[str, Any]) -> None:
        identity = self.identity(row)
        current = self._snapshot.get(identity)
        # Keep the newest row even when Wrangler returns rows newest-first.
        if current is None or self._snapshot_order(row) > self._snapshot_order(current):
            self._snapshot[identity] = row

    async def lookup(self, *, provider: str, candidate: dict[str, Any],
                     language: str, include_adult: bool) -> dict[str, Any] | None:
        """Return a fresh authoritative snapshot row, if its full identity matches."""
        row = self._snapshot.get((provider, candidate["candidate_key"],
                                  CANDIDATE_KEY_VERSION, candidate.get("title"),
                                  candidate.get("year"), candidate.get("media_type"),
                                  language, include_adult, RESOLVER_VERSION))
        if row is None:
            return None
        try:
            fresh = datetime.fromisoformat(str(row["fresh_until"]).replace("Z", "+00:00"))
            if fresh <= datetime.now(timezone.utc):
                return None
        except (KeyError, TypeError, ValueError):
            return None
        return row

    def add_record(self, row: dict[str, Any]) -> None:
        if row.get("outcome") in ("matched", "not_found"):
            self._set_snapshot_row(row)

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

    snapshot = getattr(args, "cache_snapshot_rows", None)
    return ProviderCache(path, snapshot=snapshot)


def read_cache_snapshot(path: str | Path) -> list[dict[str, Any]]:
    """Read Wrangler's ``d1 execute --json`` envelope.

    Wrangler emits ``[{"results": [...] }]``; accepting only that shape avoids
    accidentally treating a CLI error or a raw object as authoritative cache.
    """
    value = json.loads(Path(path).read_text(encoding="utf-8"))
    if not isinstance(value, list):
        raise ValueError("cache snapshot must be Wrangler's top-level results array")
    rows: list[dict[str, Any]] = []
    for envelope in value:
        if isinstance(envelope, dict) and isinstance(envelope.get("results"), list):
            rows.extend(r for r in envelope["results"] if isinstance(r, dict))
    return rows


def make_cache_record(*, provider: str, candidate: dict[str, Any], language: str,
                      include_adult: bool, outcome: str, payload: dict[str, Any] | None,
                      source_run_id: str | None = None,
                      source_artifact_checksum: str | None = None) -> dict[str, Any]:
    now = datetime.now(timezone.utc).replace(microsecond=0)
    media = (payload or {}).get("media_type")
    record_id = (payload or {}).get("tmdb_id") if provider == "tmdb" else (payload or {}).get("igdb_id")
    row = {
        "provider": provider, "candidate_key": candidate["candidate_key"],
        "candidate_key_version": CANDIDATE_KEY_VERSION, "query_title": candidate.get("title", ""),
        "query_year": candidate.get("year"), "query_media_type": candidate.get("media_type"),
        "language": language, "include_adult": int(include_adult),
        "resolver_version": RESOLVER_VERSION, "outcome": outcome,
        "provider_record_id": record_id, "resolved_type": media,
        "resolved_title": (payload or {}).get("title"), "resolved_year": (payload or {}).get("release_year"),
        "normalized_payload": json.dumps(payload, ensure_ascii=False, sort_keys=True) if payload is not None else None,
        "fetched_at": now.isoformat().replace("+00:00", "Z"),
        "fresh_until": (now + CACHE_TTLS[outcome]).isoformat().replace("+00:00", "Z"),
        "source_run_id": source_run_id, "source_artifact_checksum": source_artifact_checksum,
        "payload_schema_version": PAYLOAD_SCHEMA_VERSION,
    }
    return row
