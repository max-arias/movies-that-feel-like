"""pipeline.check_images — probe stored image URLs and emit liveness SQL.

After a gallery image is removed, Reddit keeps serving a shared 130x60 "if you
are looking for an image, it was probably deleted" bitmap (1048 bytes, md5
``f17b01901c752c1bb04928131d1661af``) from the URL at HTTP 404 with
``content-type: image/png``.  A browser therefore loads the URL successfully
and the site renders the placeholder as if it were the post's photo.  This
module probes every stored URL server-side and emits the SQL that records which
images are dead so the site can skip them.

The run is offline apart from the probes themselves: D1 is never contacted.
The caller supplies the rows to consider (a ``wrangler d1 execute --json``
artifact of ``SELECT id, source_url FROM imported_post_images``) and applies
the emitted SQL.  Deaths are recent-biased, so this is meant to re-run on a
schedule rather than once.

Two invariants shape the design:

*   A row only ever moves from unknown to known.  Only the shared placeholder
    counts as deleted and only a plain 200 counts as alive; every other answer
    (403, 429, 5xx, redirect-to-HTML, a 404 with a different body, a timeout)
    leaves the row untouched and eligible for the next run, so a broken or
    blocked probe can never mark a live image dead.
*   Every statement is gated on ``deleted_at IS NULL``, so re-applying an older
    artifact is a no-op for rows that are already known to be deleted.

If more than a quarter of the probes come back unknown the probe itself is
assumed to be broken (blocked, DNS, agent string), and the run fails with a
non-zero exit after writing no artifacts at all — recording mostly-unknown
liveness state would be worse than recording nothing.

Requests use the exact stored ``source_url`` string, query string included.
Rewriting or stripping the query string turns a live image into an HTTP 403
with an HTML body, which would be another false negative.
"""

from __future__ import annotations

import argparse
import asyncio
import json
import os
import tempfile
from dataclasses import dataclass
from datetime import datetime, timezone
from itertools import islice
from pathlib import Path
from typing import Any, Iterable, Sequence

import httpx

ALIVE = "alive"
DELETED = "deleted"
UNKNOWN = "unknown"

# ``datetime('now')`` shape, so emitted stamps match the column default.
_TIMESTAMP_FORMAT = "%Y-%m-%d %H:%M:%S"

# The shared Reddit placeholder: 404, image/png, exactly 1048 bytes.
_PLACEHOLDER_STATUS = 404
_PLACEHOLDER_CONTENT_TYPE = "image/png"
_PLACEHOLDER_LENGTH = 1048

# Some CDNs reject HEAD outright; those two codes earn a single GET retry.
_HEAD_UNSUPPORTED = frozenset({405, 501})

# Reddit rejects several default agent strings, so the probe introduces itself
# as a browser.  The requested URL is still the stored one, byte for byte.
_USER_AGENT = (
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
    "Chrome/126.0.0.0 Safari/537.36"
)
_ACCEPT = "image/avif,image/webp,image/png,image/*;q=0.8,*/*;q=0.5"

_DEFAULT_CONCURRENCY = 24
_DEFAULT_TIMEOUT = 15.0
_MAX_REDIRECTS = 5
# Above this share of inconclusive probes the probe itself is presumed broken.
_UNKNOWN_ABORT_PERCENT = 25
_REPORTED_UNKNOWN = 5


@dataclass(frozen=True, slots=True)
class ImageRow:
    """One candidate ``imported_post_images`` row.

    Fields are ``None`` when the input could not supply a usable value; such a
    row classifies as unknown instead of vanishing.
    """

    id: int | None
    source_url: str | None


@dataclass(frozen=True, slots=True)
class Probe:
    """The classification of a single row."""

    row: ImageRow
    outcome: str
    detail: str


def _to_row(item: Any) -> ImageRow:
    if not isinstance(item, dict):
        return ImageRow(None, None)
    row_id = item.get("id")
    if isinstance(row_id, bool) or not isinstance(row_id, int):
        row_id = None
    source_url = item.get("source_url")
    if not isinstance(source_url, str) or not source_url:
        source_url = None
    return ImageRow(row_id, source_url)


def parse_rows(payload: Any) -> list[ImageRow]:
    """Flatten a rows artifact into :class:`ImageRow` values.

    Accepts ``[{"results": [row, ...]}]`` (``wrangler d1 execute --json``) and
    a bare ``[row, ...]``.
    """
    if isinstance(payload, dict):
        payload = payload.get("results", payload)
    if not isinstance(payload, list):
        raise ValueError("rows file must contain a JSON list of rows")
    items: list[Any] = []
    for item in payload:
        results = item.get("results") if isinstance(item, dict) else None
        if isinstance(results, list):
            items.extend(results)
        else:
            items.append(item)
    return [_to_row(item) for item in items]


def load_rows(path: Path) -> list[ImageRow]:
    try:
        payload = json.loads(Path(path).read_text(encoding="utf-8"))
    except OSError as exc:
        raise SystemExit(
            f"[pipeline:check-images] Could not read rows file {path}: {exc}"
        ) from exc
    except json.JSONDecodeError as exc:
        raise SystemExit(
            f"[pipeline:check-images] Rows file {path} is not valid JSON: {exc}"
        ) from exc
    try:
        return parse_rows(payload)
    except ValueError as exc:
        raise SystemExit(f"[pipeline:check-images] Rows file {path}: {exc}") from exc


def resolve_timestamp(now: str | None) -> str:
    """Return the recorded stamp as UTC ``YYYY-MM-DD HH:MM:SS``."""
    if now is None:
        return datetime.now(timezone.utc).strftime(_TIMESTAMP_FORMAT)
    try:
        parsed = datetime.fromisoformat(now.replace("Z", "+00:00"))
    except ValueError as exc:
        raise SystemExit(
            f"[pipeline:check-images] --now is not an ISO 8601 timestamp: {now!r}"
        ) from exc
    if parsed.tzinfo is None:
        parsed = parsed.replace(tzinfo=timezone.utc)
    return parsed.astimezone(timezone.utc).strftime(_TIMESTAMP_FORMAT)


def _content_length(response: httpx.Response) -> int | None:
    raw = response.headers.get("content-length")
    if raw is None:
        return None
    try:
        return int(raw.strip())
    except ValueError:
        return None


def _content_type(response: httpx.Response) -> str:
    return response.headers.get("content-type", "").strip().lower()


def _describe(response: httpx.Response) -> str:
    length = _content_length(response)
    return (
        f"{response.status_code} {_content_type(response) or 'no content-type'} "
        f"{length if length is not None else 'no content-length'}"
    )


def classify(response: httpx.Response) -> str:
    """Map a probe response to ``alive``, ``deleted`` or ``unknown``.

    Anything unrecognised stays unknown: a 404 with a different content type or
    length is a trap, not evidence of deletion.
    """
    if response.status_code == 200:
        return ALIVE
    if (
        response.status_code == _PLACEHOLDER_STATUS
        and _content_type(response).startswith(_PLACEHOLDER_CONTENT_TYPE)
        and _content_length(response) == _PLACEHOLDER_LENGTH
    ):
        return DELETED
    return UNKNOWN


def _error_detail(exc: Exception) -> str:
    message = str(exc).strip()
    return f"{type(exc).__name__}: {message}" if message else type(exc).__name__


async def _probe_one(client: httpx.AsyncClient, row: ImageRow) -> Probe:
    """Probe one row; never raises, because a failure is an ``unknown``."""
    if row.id is None or row.source_url is None:
        return Probe(row, UNKNOWN, "row has no usable id/source_url")
    try:
        response = await client.head(row.source_url)
    except (httpx.HTTPError, httpx.InvalidURL) as exc:
        return Probe(row, UNKNOWN, _error_detail(exc))
    if response.status_code in _HEAD_UNSUPPORTED:
        # Exactly one retry: a streamed GET that is never read into memory.
        try:
            async with client.stream("GET", row.source_url) as streamed:
                return Probe(row, classify(streamed), _describe(streamed))
        except (httpx.HTTPError, httpx.InvalidURL) as exc:
            return Probe(row, UNKNOWN, f"GET {_error_detail(exc)}")
    return Probe(row, classify(response), _describe(response))


async def probe_rows(
    rows: Sequence[ImageRow], *, concurrency: int, timeout: float
) -> list[Probe]:
    """Probe *rows* with bounded concurrency, preserving input order."""
    limits = httpx.Limits(max_connections=concurrency, max_keepalive_connections=concurrency)
    semaphore = asyncio.Semaphore(concurrency)
    async with httpx.AsyncClient(
        headers={"User-Agent": _USER_AGENT, "Accept": _ACCEPT},
        timeout=httpx.Timeout(timeout),
        follow_redirects=True,
        max_redirects=_MAX_REDIRECTS,
        limits=limits,
        # No transport-level retries: a row is probed at most twice (HEAD, then
        # one GET fallback).
        transport=httpx.AsyncHTTPTransport(retries=0),
    ) as client:

        async def bounded(row: ImageRow) -> Probe:
            async with semaphore:
                return await _probe_one(client, row)

        return list(await asyncio.gather(*(bounded(row) for row in rows)))


def count_outcomes(probes: Sequence[Probe], skipped: int) -> dict[str, int]:
    counts = {ALIVE: 0, DELETED: 0, UNKNOWN: 0, "skipped": skipped}
    for probe in probes:
        counts[probe.outcome] += 1
    return counts


def _sql_literal(value: str) -> str:
    return "'" + value.replace("'", "''") + "'"


def render_sql(probes: Iterable[Probe], *, timestamp: str, counts: dict[str, int]) -> str:
    """Render the liveness SQL: one statement per line, unknown rows omitted.

    Every statement is guarded by ``deleted_at IS NULL`` so a row only ever
    moves from unknown to known, never backwards.
    """
    checked = counts[ALIVE] + counts[DELETED] + counts[UNKNOWN]
    lines = [
        "-- Image liveness probe generated by pipeline.check_images.",
        "-- A row only ever moves from unknown to known: unknown rows emit nothing.",
        f"-- checked={checked} alive={counts[ALIVE]} deleted={counts[DELETED]}"
        f" unknown={counts[UNKNOWN]} skipped={counts['skipped']}",
        f"-- generated_at={timestamp} UTC",
        "",
    ]
    stamp = _sql_literal(timestamp)
    for probe in probes:
        if probe.outcome == DELETED:
            lines.append(
                f"UPDATE imported_post_images SET deleted_at = {stamp}, checked_at = {stamp}"
                f" WHERE id = {probe.row.id} AND deleted_at IS NULL;"
            )
        elif probe.outcome == ALIVE:
            lines.append(
                f"UPDATE imported_post_images SET checked_at = {stamp}"
                f" WHERE id = {probe.row.id} AND deleted_at IS NULL;"
            )
    return "\n".join(lines) + "\n"


def abort_message(probes: Sequence[Probe], counts: dict[str, int], out: Path) -> str | None:
    """Return the failure message when too many probes are inconclusive."""
    checked = len(probes)
    if checked == 0:
        return None
    # "More than a quarter": an exactly-25% unknown run still writes.
    if counts[UNKNOWN] * 100 <= checked * _UNKNOWN_ABORT_PERCENT:
        return None
    share = counts[UNKNOWN] * 100 / checked
    samples = [
        f"  {probe.row.source_url or '<no source_url>'} -> {probe.detail}"
        for probe in islice((p for p in probes if p.outcome == UNKNOWN), _REPORTED_UNKNOWN)
    ]
    return (
        f"[pipeline:check-images] {counts[UNKNOWN]}/{checked} probes ({share:.1f}%) returned"
        f" unknown, so the probe itself looks broken (blocked, DNS, agent string).\n"
        f"Nothing was written to {out}; fix the probe and re-run.\n"
        "First unknown probes:\n" + "\n".join(samples)
    )


def write_atomic(path: Path, text: str) -> None:
    """Write *text* to *path* via temp file plus rename, so readers see no partial file."""
    target = Path(path)
    target.parent.mkdir(parents=True, exist_ok=True)
    handle = tempfile.NamedTemporaryFile(
        "w",
        encoding="utf-8",
        dir=str(target.parent),
        prefix=f".{target.name}.",
        suffix=".tmp",
        delete=False,
    )
    try:
        with handle:
            handle.write(text)
            handle.flush()
            os.fsync(handle.fileno())
        os.replace(handle.name, target)
    except BaseException:
        Path(handle.name).unlink(missing_ok=True)
        raise


def _positive_int(value: str) -> int:
    parsed = int(value)
    if parsed < 1:
        raise argparse.ArgumentTypeError("must be at least 1")
    return parsed


def _positive_float(value: str) -> float:
    parsed = float(value)
    if parsed <= 0:
        raise argparse.ArgumentTypeError("must be greater than 0")
    return parsed


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Probe stored image URLs and emit liveness UPDATE SQL.",
    )
    parser.add_argument(
        "--rows-file",
        required=True,
        type=Path,
        help="JSON rows artifact containing id and source_url (wrangler --json output)",
    )
    parser.add_argument(
        "--out",
        required=True,
        type=Path,
        help="Path for the emitted SQL statements",
    )
    parser.add_argument(
        "--summary",
        type=Path,
        help="Optional path for a JSON run summary",
    )
    parser.add_argument(
        "--concurrency",
        type=_positive_int,
        default=_DEFAULT_CONCURRENCY,
        help="Maximum in-flight probes (default: %(default)s)",
    )
    parser.add_argument(
        "--timeout",
        type=_positive_float,
        default=_DEFAULT_TIMEOUT,
        help="Per-request timeout in seconds (default: %(default)s)",
    )
    parser.add_argument(
        "--limit",
        type=_positive_int,
        help="Probe at most this many rows; the rest are reported as skipped",
    )
    parser.add_argument(
        "--now",
        help="ISO 8601 timestamp to record instead of the current time (default: now, UTC)",
    )
    return parser


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    loaded = load_rows(args.rows_file)
    rows = loaded[: args.limit] if args.limit is not None else loaded
    skipped = len(loaded) - len(rows)

    timestamp = resolve_timestamp(args.now)
    probes = asyncio.run(
        probe_rows(rows, concurrency=args.concurrency, timeout=args.timeout)
    )
    counts = count_outcomes(probes, skipped)

    abort = abort_message(probes, counts, args.out)
    if abort is not None:
        raise SystemExit(abort)

    write_atomic(args.out, render_sql(probes, timestamp=timestamp, counts=counts))
    if args.summary is not None:
        summary = {
            "checked": len(probes),
            "alive": counts[ALIVE],
            "deleted": counts[DELETED],
            "unknown": counts[UNKNOWN],
            "skipped": counts["skipped"],
            "generated_at": timestamp,
            "rows_file": str(args.rows_file),
        }
        write_atomic(args.summary, json.dumps(summary, indent=2, ensure_ascii=False) + "\n")

    print(
        f"[pipeline:check-images] alive={counts[ALIVE]} deleted={counts[DELETED]}"
        f" unknown={counts[UNKNOWN]} skipped={counts['skipped']}"
    )


if __name__ == "__main__":
    main()
