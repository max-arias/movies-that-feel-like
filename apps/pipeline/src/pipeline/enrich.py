"""
pipeline.enrich — Resolve extracted recommendation candidates against TMDB.

Reads an extraction artifact, deduplicates candidate titles, and resolves
each against The Movie Database (TMDB) search/multi.  Matched records are
enriched with TMDB IDs, metadata, poster/backdrop URLs, and IMDb IDs.
"""

from __future__ import annotations

import argparse
import os
import re
import time
from collections.abc import Callable
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

import httpx

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.paths import ensure_pipeline_dirs, working_dir

# ── Constants ──────────────────────────────────────────────────────────

TMDB_BASE_URL = "https://api.themoviedb.org/3"
IMAGE_BASE_URL = "https://image.tmdb.org/t/p"

_USER_AGENT = "movies-that-feel-like/0.1"

# ── Candidate deduplication ────────────────────────────────────────────


def _normalize_title(title: str) -> str:
    """Lower-case, strip, collapse whitespace for dedup comparison."""
    return re.sub(r"\s+", " ", title.strip().lower())


def _candidate_key(title: str, year: int | None, media_type: str) -> str:
    """Deterministic key for deduplication."""
    return f"{_normalize_title(title)}|{year or ''}|{media_type}"


def collect_candidates(
    results: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    """Deduplicate recommendation candidates across all extraction results.

    Returns a list of candidate dicts with aggregated evidence.
    """
    buckets: dict[str, dict[str, Any]] = {}

    for post_result in results:
        post_id = post_result.get("reddit_post_id", "?")
        for rec in post_result.get("recommendations") or []:
            title = rec.get("title", "")
            year = rec.get("year")
            media_type = rec.get("media_type", "unknown")
            key = _candidate_key(title, year, media_type)

            if key not in buckets:
                buckets[key] = {
                    "candidate_key": key,
                    "title": title,
                    "year": year,
                    "media_type": media_type,
                    "source_post_ids": [],
                    "evidence_count": 0,
                    "evidence": [],
                }

            bucket = buckets[key]
            if post_id not in bucket["source_post_ids"]:
                bucket["source_post_ids"].append(post_id)

            evidence_list = rec.get("evidence") or []
            bucket["evidence_count"] += len(evidence_list)
            for ev in evidence_list:
                ev_with_post = {**ev, "reddit_post_id": post_id}
                # deduplicate evidence at the comment level within candidate
                if not any(
                    e.get("comment_id") == ev.get("comment_id")
                    and e.get("reddit_post_id") == post_id
                    for e in bucket["evidence"]
                ):
                    bucket["evidence"].append(ev_with_post)

    return list(buckets.values())


# ── TMDB client helpers ────────────────────────────────────────────────


def _tmdb_headers() -> dict[str, str]:
    """Build auth headers for TMDB API requests.

    Prefers bearer token (TMDB_ACCESS_TOKEN) over query-param API key.
    """
    token = os.environ.get("TMDB_ACCESS_TOKEN")
    if token:
        return {
            "Authorization": f"Bearer {token}",
            "accept": "application/json",
            "User-Agent": _USER_AGENT,
        }
    return {
        "accept": "application/json",
        "User-Agent": _USER_AGENT,
    }


def _tmdb_params(extra: dict[str, Any] | None = None) -> dict[str, Any]:
    """Return base query params; adds ``api_key`` if only TMDB_API_KEY is set."""
    params: dict[str, Any] = {}
    if not os.environ.get("TMDB_ACCESS_TOKEN"):
        api_key = os.environ.get("TMDB_API_KEY")
        if api_key:
            params["api_key"] = api_key
    if extra:
        params.update(extra)
    return params


def _search_multi(
    client: httpx.Client,
    query: str,
    language: str = "en-US",
    include_adult: bool = False,
) -> list[dict[str, Any]]:
    """Call ``/search/multi`` and return the results list (empty on failure)."""
    params = _tmdb_params(
        {
            "query": query,
            "include_adult": str(include_adult).lower(),
            "language": language,
            "page": 1,
        }
    )
    resp = client.get(
        f"{TMDB_BASE_URL}/search/multi",
        params=params,
    )
    resp.raise_for_status()
    data = resp.json()
    return data.get("results") or []


def _fetch_external_ids(
    client: httpx.Client,
    tmdb_id: int,
    media_type: str,
) -> dict[str, Any]:
    """Fetch external IDs (IMDb) for a matched record."""
    endpoint = f"{'movie' if media_type == 'movie' else 'tv'}/{tmdb_id}/external_ids"
    params = _tmdb_params()
    resp = client.get(f"{TMDB_BASE_URL}/{endpoint}", params=params)
    resp.raise_for_status()
    return resp.json()


def _image_url(path: str | None, size: str = "w500") -> str | None:
    """Build full TMDB image URL or return ``None``."""
    if not path:
        return None
    return f"{IMAGE_BASE_URL}/{size}{path}"


def _best_match(
    candidate: dict[str, Any],
    results: list[dict[str, Any]],
) -> dict[str, Any] | None:
    """Pick the best search result for a candidate.

    Strategy:
    1. Filter to results whose ``media_type`` is ``movie`` or ``tv``.
    2. If candidate has a known media_type (movie/tv), prefer results
       matching that type.
    3. If candidate has a year, prefer results whose release/start year
       matches.  Otherwise return the first compatible result.
    """
    compatible = [
        r
        for r in results
        if r.get("media_type") in ("movie", "tv")
    ]
    if not compatible:
        return None

    cand_type = candidate.get("media_type")
    cand_year = candidate.get("year")

    # Narrow by media type if candidate specifies movie or tv
    if cand_type in ("movie", "tv"):
        typed = [r for r in compatible if r.get("media_type") == cand_type]
        if typed:
            compatible = typed
        else:
            # No exact-type match — keep all movie/tv results
            pass

    # Narrow by year
    if cand_year:
        for r in compatible:
            release = r.get("release_date") or r.get("first_air_date") or ""
            if release.startswith(str(cand_year)):
                return r

    return compatible[0]


# ── Main logic ─────────────────────────────────────────────────────────


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Resolve extracted recommendation candidates against TMDB.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Environment:\n"
            "  TMDB_ACCESS_TOKEN   Preferred TMDB bearer token (v4).\n"
            "  TMDB_API_KEY        Fallback query-param API key (v3).\n"
            "\nExamples:\n"
            "  # Dry-run — no API key needed\n"
            "  pipeline:enrich --dry-run\n"
            "\n"
            "  # Real enrichment\n"
            "  TMDB_ACCESS_TOKEN=... pipeline:enrich --limit 10\n"
        ),
    )
    parser.add_argument(
        "--input",
        default=None,
        help="Path to extraction artifact (default: latest data/working/extraction-*.json)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help="Output path (default: data/working/enrichment-{timestamp}.json)",
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="Maximum number of unique title candidates to resolve",
    )
    parser.add_argument(
        "--include-adult",
        action="store_true",
        default=False,
        help="Include adult content in TMDB search results",
    )
    parser.add_argument(
        "--language",
        default="en-US",
        help="TMDB search language (default: %(default)s)",
    )
    parser.add_argument(
        "--sleep-seconds",
        type=float,
        default=0.25,
        help="Sleep between TMDB API calls for rate limiting (default: %(default)s)",
    )
    parser.add_argument(
        "--max-attempts",
        type=int,
        default=3,
        help="Total HTTP attempts per TMDB call (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-seconds",
        type=float,
        default=2.0,
        help="Initial retry sleep before exponential backoff (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-multiplier",
        type=float,
        default=2.0,
        help="Exponential backoff multiplier per retry (default: %(default)s)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Collect and dedupe candidates only — no TMDB calls",
    )
    return parser


def _latest_extraction() -> Path:
    """Return the most recent real (non-dry-run) extraction artifact."""
    candidates = sorted(working_dir().glob("extraction-*.json"))
    # Exclude dry-run files — they start with extraction-dry-run- but the
    # glob extraction-*.json catches both.  Filter by source internally.
    real = [
        p
        for p in candidates
        if "dry-run" not in p.stem
    ]
    if not real:
        raise SystemExit(
            "[pipeline:enrich] No real extraction artifacts found — "
            "run extract (without --dry-run) first"
        )
    return real[-1]


def _ensure_tmdb_key() -> None:
    """Ensure at least one TMDB credential is available."""
    if os.environ.get("TMDB_ACCESS_TOKEN") or os.environ.get("TMDB_API_KEY"):
        return
    raise SystemExit(
        "[pipeline:enrich] TMDB_ACCESS_TOKEN or TMDB_API_KEY must be set "
        "for real enrichment. Use --dry-run to preview candidates without a key."
    )


def _run_with_retry(
    client: httpx.Client,
    label: str,
    fn: Callable[[], Any],
    max_attempts: int,
    backoff_seconds: float,
    backoff_multiplier: float,
) -> Any:
    """Execute *fn()* with retry/backoff for transient HTTP errors."""
    last_error: Exception | None = None
    for attempt in range(1, max_attempts + 1):
        try:
            return fn()
        except Exception as exc:
            last_error = exc
            if attempt < max_attempts:
                wait = backoff_seconds * (backoff_multiplier ** (attempt - 1))
                print(
                    f"    {label} → attempt {attempt} failed: {exc}. "
                    f"Retrying in {wait:.1f}s …"
                )
                time.sleep(wait)
            else:
                print(f"    {label} → FAILED after {max_attempts} attempts: {exc}")
    raise last_error  # type: ignore[misc]


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    ensure_pipeline_dirs()

    # Resolve input --------------------------------------------------------
    input_path: Path
    if args.input is not None:
        input_path = Path(args.input)
    else:
        input_path = _latest_extraction()

    artifact = read_json_artifact(input_path)
    results = artifact.get("results", [])

    # Quick check: require API key early for real mode
    if not args.dry_run:
        _ensure_tmdb_key()

    print(
        f"[pipeline:enrich] Processing candidates from {input_path.name} "
        f"(dry-run={args.dry_run})"
    )

    # Collect and deduplicate candidates ----------------------------------
    candidates = collect_candidates(results)

    if args.limit is not None:
        candidates = candidates[: args.limit]

    print(f"[pipeline:enrich] Collected {len(candidates)} unique candidate(s)")

    # Build candidate list with evidence summary for output ---------------
    candidate_records = [
        {
            "candidate_key": c["candidate_key"],
            "title": c["title"],
            "year": c["year"],
            "media_type": c["media_type"],
            "source_post_ids": c["source_post_ids"],
            "evidence_count": c["evidence_count"],
        }
        for c in candidates
    ]

    if args.dry_run:
        slug = timestamp_slug()
        if args.out is None:
            out = working_dir() / f"enrichment-dry-run-{slug}.json"
        else:
            out = Path(args.out)

        dry_artifact: dict[str, Any] = {
            "status": "enrichment_dry_run",
            "source": "pipeline.enrich",
            "created_at": datetime.now(timezone.utc).isoformat(),
            "extraction_artifact": str(input_path),
            "args": {
                "dry_run": True,
                "limit": args.limit,
                "include_adult": args.include_adult,
                "language": args.language,
                "max_attempts": args.max_attempts,
                "backoff_seconds": args.backoff_seconds,
                "backoff_multiplier": args.backoff_multiplier,
            },
            "candidates": candidate_records,
            "summary": {
                "candidate_count": len(candidates),
            },
        }

        write_json_artifact(out, dry_artifact)
        print(f"[pipeline:enrich] Dry-run complete: {len(candidates)} candidate(s)")
        print(f"[pipeline:enrich] Artifact written to {out}")
        return

    # ── Real enrichment ─────────────────────────────────────────────────
    print(f"[pipeline:enrich] Enriching {len(candidates)} candidate(s) …")

    matches: list[dict[str, Any]] = []
    unmatched: list[dict[str, Any]] = []
    errors: list[dict[str, Any]] = []

    sess = httpx.Client(
        headers=_tmdb_headers(),
        timeout=httpx.Timeout(30),
        follow_redirects=True,
    )

    try:
        for idx, cand in enumerate(candidates, start=1):
            title = cand["title"]
            total = len(candidates)
            print(f"  [{idx}/{total}] {title} …")

            # ── Search ───────────────────────────────────────────────
            def _do_search() -> list[dict[str, Any]]:
                return _search_multi(
                    sess,
                    query=title,
                    language=args.language,
                    include_adult=args.include_adult,
                )

            try:
                search_results = _run_with_retry(
                    sess,
                    label=f"  [{idx}/{total}] {title} search",
                    fn=_do_search,
                    max_attempts=args.max_attempts,
                    backoff_seconds=args.backoff_seconds,
                    backoff_multiplier=args.backoff_multiplier,
                )
            except Exception as exc:
                errors.append(
                    {
                        "candidate_key": cand["candidate_key"],
                        "title": title,
                        "error": f"search failed: {exc}",
                    }
                )
                print(f"  [{idx}/{total}] {title} → ERROR (search): {exc}")
                if idx < total:
                    time.sleep(args.sleep_seconds)
                continue

            best = _best_match(cand, search_results)

            if best is None:
                unmatched.append(
                    {
                        "candidate_key": cand["candidate_key"],
                        "title": title,
                        "year": cand["year"],
                        "media_type": cand["media_type"],
                        "reason": "no compatible movie/tv result found",
                    }
                )
                print(f"  [{idx}/{total}] {title} → no match")
                if idx < total:
                    time.sleep(args.sleep_seconds)
                continue

            # ── External IDs ─────────────────────────────────────────
            tmdb_id = best["id"]
            b_media_type = best["media_type"]
            imdb_id: str | None = None

            def _do_ext_ids() -> dict[str, Any]:
                return _fetch_external_ids(sess, tmdb_id, b_media_type)

            try:
                ext_data = _run_with_retry(
                    sess,
                    label=f"  [{idx}/{total}] {title} external_ids",
                    fn=_do_ext_ids,
                    max_attempts=args.max_attempts,
                    backoff_seconds=args.backoff_seconds,
                    backoff_multiplier=args.backoff_multiplier,
                )
                imdb_id = ext_data.get("imdb_id")
            except Exception as exc:
                # Non-fatal — still include the match without imdb_id
                print(
                    f"    [{idx}/{total}] {title} → external_ids failed: {exc}"
                )

            release_date = best.get("release_date") or best.get(
                "first_air_date"
            ) or ""
            release_year = int(release_date[:4]) if len(release_date) >= 4 else None

            poster_path = best.get("poster_path")
            backdrop_path = best.get("backdrop_path")

            match_record: dict[str, Any] = {
                "candidate_key": cand["candidate_key"],
                "query_title": title,
                "tmdb_id": tmdb_id,
                "media_type": b_media_type,
                "title": best.get("title") or best.get("name") or "",
                "original_title": best.get("original_title")
                or best.get("original_name")
                or "",
                "release_year": release_year,
                "poster_path": poster_path,
                "poster_url": _image_url(poster_path, "w500"),
                "backdrop_path": backdrop_path,
                "backdrop_url": _image_url(backdrop_path, "original"),
                "overview": best.get("overview") or "",
                "popularity": best.get("popularity"),
                "vote_average": best.get("vote_average"),
                "imdb_id": imdb_id,
                "raw_result": best,
            }
            matches.append(match_record)
            print(
                f"  [{idx}/{total}] {title} → {b_media_type} #{tmdb_id} "
                f"({match_record['title']})"
            )

            if idx < total:
                time.sleep(args.sleep_seconds)

    finally:
        sess.close()

    # ── Build output artifact ───────────────────────────────────────────
    slug = timestamp_slug()
    if args.out is None:
        out = working_dir() / f"enrichment-{slug}.json"
    else:
        out = Path(args.out)

    enrichment_artifact: dict[str, Any] = {
        "status": "enriched",
        "source": "pipeline.enrich",
        "enriched_at": datetime.now(timezone.utc).isoformat(),
        "extraction_artifact": str(input_path),
        "args": {
            "dry_run": False,
            "limit": args.limit,
            "include_adult": args.include_adult,
            "language": args.language,
            "sleep_seconds": args.sleep_seconds,
            "max_attempts": args.max_attempts,
            "backoff_seconds": args.backoff_seconds,
            "backoff_multiplier": args.backoff_multiplier,
        },
        "candidates": candidate_records,
        "matches": matches,
        "unmatched": unmatched,
        "errors": errors,
        "summary": {
            "candidate_count": len(candidates),
            "match_count": len(matches),
            "unmatched_count": len(unmatched),
            "error_count": len(errors),
        },
    }

    write_json_artifact(out, enrichment_artifact)

    print(
        f"[pipeline:enrich] Done: {len(matches)} matched, "
        f"{len(unmatched)} unmatched, {len(errors)} errors"
    )
    print(f"[pipeline:enrich] Artifact written to {out}")


if __name__ == "__main__":
    main()
