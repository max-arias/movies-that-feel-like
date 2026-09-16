"""Re-derive image rows for published posts whose seed rows were dropped.

Generated seed migrations copied run-local SQLite row ids into D1. Whenever a
seed reused an id D1 already owned, ``INSERT OR IGNORE`` discarded the image
row without a word, so the post is publishable but has no ``imported_post_images``
rows. This module refetches the raw post records from the Arctic Shift by-ids
endpoint and re-emits the image rows as **id-free, natural-key upserts**: the
parent resolves through ``reddit_post_id`` (the destination allocates the post
id) and conflicts are resolved on ``(imported_vibe_post_id, source_url)``, the
unique index added by ``0186_media_liveness_and_natural_keys.sql``.

The command only writes SQL; it never touches a database. Image extraction is
delegated to :func:`pipeline.normalize._collect_images` so refetched rows use
exactly the same derivation as a normal import.

Usage::

    PYTHONPATH=src python -m pipeline.refetch_images \
        --reddit-ids-file /tmp/zero_image_posts.txt \
        --out /tmp/refetch_images.sql \
        --raw-out /tmp/refetch_images_raw.json \
        --manifest /tmp/refetch_images_manifest.json
"""

from __future__ import annotations

import argparse
import os
import sys
import tempfile
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Callable, Iterator, Sequence

import httpx

from pipeline.artifacts import write_json_artifact
from pipeline.normalize import _collect_images

_API_URL = "https://arctic-shift.photon-reddit.com/api/posts/ids"
# The endpoint caps a single request at roughly 100 ids.
_MAX_BATCH_SIZE = 100
# One initial attempt plus two retries.
_ATTEMPTS = 3
_BACKOFF_SECONDS = 2.0
_REQUIRED_MIGRATION = "0186_media_liveness_and_natural_keys.sql"
_INSERT_COLUMNS = (
    "imported_vibe_post_id",
    "source_url",
    "preview_url",
    "width",
    "height",
    "sort_order",
    "created_at",
)


class RefetchError(RuntimeError):
    """A batch could not be resolved to source post records."""


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="pipeline.refetch_images",
        description=(
            "Refetch Reddit posts and emit id-free natural-key upserts for "
            "their image rows."
        ),
    )
    parser.add_argument(
        "--reddit-ids-file",
        required=True,
        help="Newline-delimited Reddit post ids (blank lines and '#' comments "
        "ignored; an optional second whitespace-separated field is ignored).",
    )
    parser.add_argument("--out", required=True, help="SQL output path.")
    parser.add_argument(
        "--raw-out",
        default=None,
        help="Optional path for the raw Arctic Shift artifact.",
    )
    parser.add_argument(
        "--manifest",
        default=None,
        help="Optional path for the JSON run report.",
    )
    parser.add_argument(
        "--batch-size",
        type=int,
        default=_MAX_BATCH_SIZE,
        help=f"Ids per request (default: {_MAX_BATCH_SIZE}, max: {_MAX_BATCH_SIZE}).",
    )
    parser.add_argument(
        "--timeout",
        type=float,
        default=30.0,
        help="Per-request timeout in seconds (default: 30).",
    )
    return parser


def _read_reddit_ids(path: Path) -> list[str]:
    """Read Reddit post ids, preserving file order and dropping duplicates."""
    ids: list[str] = []
    seen: set[str] = set()
    for line in path.read_text(encoding="utf-8").splitlines():
        stripped = line.strip()
        if not stripped or stripped.startswith("#"):
            continue
        reddit_id = stripped.split()[0]
        if reddit_id not in seen:
            seen.add(reddit_id)
            ids.append(reddit_id)
    return ids


def _chunks(items: Sequence[str], size: int) -> Iterator[list[str]]:
    for start in range(0, len(items), size):
        yield list(items[start : start + size])


def _utc_timestamp() -> str:
    """Return a single UTC timestamp in ``YYYY-MM-DD HH:MM:SS`` form."""
    return datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S")


def _utc_iso() -> str:
    return datetime.now(timezone.utc).isoformat()


def _post_id(raw: dict[str, Any]) -> str:
    return str(raw.get("id") or "").removeprefix("t3_")


def _request_batch(
    client: httpx.Client, ids: Sequence[str], timeout: float
) -> list[dict[str, Any]]:
    """Request one batch and return the raw posts in requested order."""
    response = client.get(_API_URL, params={"ids": ",".join(ids)}, timeout=timeout)
    response.raise_for_status()
    payload = response.json()
    if not isinstance(payload, dict) or not isinstance(payload.get("data"), list):
        raise RefetchError("unexpected payload shape from Arctic Shift by-ids endpoint")
    by_id = {
        _post_id(post): post
        for post in payload["data"]
        if isinstance(post, dict)
    }
    return [by_id[reddit_id] for reddit_id in ids if reddit_id in by_id]


def _fetch_batch(
    client: httpx.Client,
    ids: Sequence[str],
    timeout: float,
    sleep: Callable[[float], None] = time.sleep,
) -> tuple[list[dict[str, Any]], list[str]]:
    """Fetch one batch, retrying twice with exponential backoff.

    Returns the raw posts plus the requested ids the source did not return.
    Raises :class:`RefetchError` when every attempt fails to produce a usable
    response -- a batch is never partially accepted silently.
    """
    ids = list(ids)
    reason = "no attempt made"
    for attempt in range(_ATTEMPTS):
        if attempt:
            sleep(_BACKOFF_SECONDS * 2 ** (attempt - 1))
        try:
            posts = _request_batch(client, ids, timeout)
        except (httpx.HTTPError, ValueError, RefetchError) as exc:
            reason = f"{type(exc).__name__}: {exc}"
            continue
        returned = {_post_id(post) for post in posts}
        absent = [reddit_id for reddit_id in ids if reddit_id not in returned]
        if not absent:
            return posts, []
        reason = f"source returned no post for {len(absent)} of {len(ids)} id(s)"
    raise RefetchError(
        f"batch of {len(ids)} id(s) after {_ATTEMPTS} attempts: {reason}"
    )


def _fetch_all(
    client: httpx.Client,
    ids: Sequence[str],
    batch_size: int,
    timeout: float,
) -> tuple[list[dict[str, Any]], list[str], list[str]]:
    """Fetch every batch, returning posts, absent ids, and problem details.

    A batch that stays unresolvable contributes its ids to *absent* and a
    human-readable reason to *problems*; the run must then fail loudly rather
    than emit SQL that quietly covers fewer posts than requested.
    """
    posts: list[dict[str, Any]] = []
    absent: list[str] = []
    problems: list[str] = []
    batches = list(_chunks(ids, batch_size))
    for index, batch in enumerate(batches, start=1):
        print(
            f"[pipeline:refetch-images] batch {index}/{len(batches)} "
            f"({len(batch)} id(s)) …"
        )
        try:
            batch_posts, batch_absent = _fetch_batch(client, batch, timeout)
        except RefetchError as exc:
            absent.extend(batch)
            problems.append(f"batch {index}: {exc}")
            continue
        posts.extend(batch_posts)
        if batch_absent:
            absent.extend(batch_absent)
            problems.append(
                f"batch {index}: source returned no post for "
                f"{', '.join(batch_absent)}"
            )
    return posts, absent, problems


def _images_by_post(
    posts: Sequence[dict[str, Any]],
) -> tuple[dict[str, list[dict[str, Any]]], list[str]]:
    """Map each fetched post id to its image records via normalize's logic."""
    images: dict[str, list[dict[str, Any]]] = {}
    without_images: list[str] = []
    for post in posts:
        reddit_id = _post_id(post)
        records = _collect_images(post)
        images[reddit_id] = records
        if not records:
            without_images.append(reddit_id)
    return images, without_images


def _sql_literal(value: Any) -> str:
    """Render a SQL literal; single quotes are doubled, never escaped away."""
    if value is None:
        return "NULL"
    if isinstance(value, bool):
        return "1" if value else "0"
    if isinstance(value, int):
        return str(value)
    return "'" + str(value).replace("'", "''") + "'"


def _image_statement(
    reddit_id: str, image: dict[str, Any], created_at: str
) -> str:
    """Render one id-free upsert that resolves its parent by natural key."""
    return (
        f"INSERT INTO imported_post_images ({', '.join(_INSERT_COLUMNS)})\n"
        f"SELECT p.id, {_sql_literal(image['source_url'])}, "
        f"{_sql_literal(image.get('preview_url'))}, "
        f"{_sql_literal(image.get('preview_width'))}, "
        f"{_sql_literal(image.get('preview_height'))}, "
        f"{_sql_literal(image.get('sort_order'))}, {_sql_literal(created_at)}\n"
        f"FROM imported_vibe_posts p WHERE p.reddit_post_id = "
        f"{_sql_literal(reddit_id)}\n"
        "ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET\n"
        "  preview_url=excluded.preview_url, width=excluded.width, "
        "height=excluded.height, sort_order=excluded.sort_order;"
    )


def _render_sql(
    ids: Sequence[str],
    images: dict[str, list[dict[str, Any]]],
    created_at: str,
) -> str:
    """Render the whole SQL file: one statement per image, header first."""
    post_count = sum(1 for reddit_id in ids if images.get(reddit_id))
    image_count = sum(len(images.get(reddit_id, [])) for reddit_id in ids)
    header = [
        "-- Refetched image rows for published posts whose seed rows were",
        "-- dropped when id-colliding seed migrations swallowed the conflict.",
        f"-- Requires migration {_REQUIRED_MIGRATION} to have run first: the",
        "--   unique index idx_imported_post_images_post_source on",
        "--   (imported_vibe_post_id, source_url) is this statement's conflict",
        "--   target, and the parent is resolved by natural key so the",
        "--   destination allocates imported_vibe_post_id.",
        "-- Statements are id-free: no 'id' column is ever inserted.",
        f"-- generated_at: {created_at}",
        f"-- posts: {post_count}",
        f"-- images: {image_count}",
        "",
    ]
    statements = [
        _image_statement(reddit_id, image, created_at)
        for reddit_id in ids
        for image in images.get(reddit_id, [])
    ]
    return "\n".join(header + statements) + "\n"


def _write_text_atomic(path: Path, text: str) -> None:
    """Write *text* to *path* through a temp file and an atomic rename."""
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            handle.write(text)
            handle.flush()
            os.fsync(handle.fileno())
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


def _raw_artifact(
    args: argparse.Namespace,
    ids: Sequence[str],
    posts: Sequence[dict[str, Any]],
    fetched_at: str,
    created_at: str,
) -> dict[str, Any]:
    """Build the raw artifact in the shape ``pipeline.fetch`` writes."""
    return {
        "status": "fetched",
        "source": "arctic_shift",
        "fetched_at": fetched_at,
        "args": {
            "reddit_ids_file": args.reddit_ids_file,
            "batch_size": args.batch_size,
            "timeout": args.timeout,
            "out": args.out,
            "raw_out": args.raw_out,
            "manifest": args.manifest,
            "created_at": created_at,
        },
        "query": {
            "endpoint": _API_URL,
            "ids": list(ids),
            "batch_size": args.batch_size,
        },
        "posts": list(posts),
        "comments_by_post": {},
        "summary": {"post_count": len(posts)},
    }


def _report_failures(
    absent: list[str], without_images: list[str], problems: Sequence[str]
) -> None:
    """Print every unresolved id so a partial repair can never look complete."""
    for problem in problems:
        print(f"[pipeline:refetch-images] ERROR {problem}", file=sys.stderr)
    if without_images:
        print(
            "[pipeline:refetch-images] ERROR posts with zero images: "
            + ", ".join(without_images),
            file=sys.stderr,
        )
    if absent:
        print(
            "[pipeline:refetch-images] ERROR ids absent from the source: "
            + ", ".join(absent),
            file=sys.stderr,
        )


def _write_manifest(
    path: str | None,
    *,
    requested: int,
    fetched: int,
    with_images: int,
    images: int,
    without_images: list[str],
    absent: list[str],
    raw_artifact: str | None,
) -> None:
    if path is None:
        return
    write_json_artifact(
        Path(path),
        {
            "requested": requested,
            "fetched": fetched,
            "with_images": with_images,
            "images": images,
            "without_images": without_images,
            "missing_from_source": absent,
            "generated_at": _utc_iso(),
            "raw_artifact": raw_artifact,
        },
    )


def main(argv: list[str] | None = None) -> int:
    """Run the refetch; return a process exit code."""
    args = build_parser().parse_args(argv)
    if not 1 <= args.batch_size <= _MAX_BATCH_SIZE:
        build_parser().error(
            f"--batch-size must be between 1 and {_MAX_BATCH_SIZE}"
        )

    ids = _read_reddit_ids(Path(args.reddit_ids_file))
    if not ids:
        print(
            f"[pipeline:refetch-images] ERROR no ids in {args.reddit_ids_file}",
            file=sys.stderr,
        )
        return 1

    created_at = _utc_timestamp()
    with httpx.Client() as client:
        posts, absent, problems = _fetch_all(
            client, ids, args.batch_size, args.timeout
        )

    raw_out = str(Path(args.raw_out)) if args.raw_out else None
    if args.raw_out:
        write_json_artifact(
            Path(args.raw_out),
            _raw_artifact(args, ids, posts, _utc_iso(), created_at),
        )

    images, without_images = _images_by_post(posts)
    image_count = sum(len(records) for records in images.values())
    with_images = len(images) - len(without_images)

    _write_manifest(
        args.manifest,
        requested=len(ids),
        fetched=len(posts),
        with_images=with_images,
        images=image_count,
        without_images=without_images,
        absent=absent,
        raw_artifact=raw_out,
    )

    if problems or absent or without_images:
        _report_failures(absent, without_images, problems)
        print(
            f"[pipeline:refetch-images] FAILED: {len(absent)} id(s) absent from "
            f"source, {len(without_images)} post(s) with zero images; "
            "no SQL written",
            file=sys.stderr,
        )
        return 1

    _write_text_atomic(Path(args.out), _render_sql(ids, images, created_at))
    print(
        f"[pipeline:refetch-images] Done: {len(ids)} requested, {len(posts)} "
        f"fetched, {with_images} with images, {image_count} image rows → {args.out}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
