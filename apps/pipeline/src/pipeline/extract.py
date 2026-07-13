"""
pipeline.extract — LLM extraction of recommendations and vibe summaries
from normalized posts and their comment trees.

Dry-run mode (``--dry-run``) builds prompts without calling any LLM.
Real mode uses Instructor + Gemini (Google Generative AI) via the
``GEMINI_API_KEY`` environment variable.
"""

from __future__ import annotations

import argparse
import os
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.extraction_input import build_extraction_prompt, flatten_comments
from pipeline.models import PostExtraction
from pipeline.paths import ensure_pipeline_dirs, normalized_dir, working_dir


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Extract recommendations and vibe summaries from normalized posts.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Environment:\n"
            "  GEMINI_API_KEY     API key for Gemini.\n"
            "\nRetry (per-post):\n"
            "  On transient provider failures the call is retried with\n"
            "  exponential backoff: wait = backoff-seconds * backoff-multiplier^(attempt-1).\n"
            "  After max-attempts the error is recorded and extraction continues.\n"
            "\nExamples:\n"
            "  # Dry-run — no API key needed\n"
            "  pipeline:extract --dry-run --limit 1\n"
            "\n"
            "  # Real extraction with more retries\n"
            "  GEMINI_API_KEY=... pipeline:extract --limit 5 --max-attempts 5\n"
        ),
    )
    parser.add_argument(
        "--input",
        default=None,
        help="Path to normalized artifact (default: latest data/working/normalized/*.json)",
    )
    parser.add_argument(
        "--out",
        default=None,
        help=(
            "Output path. In dry-run mode default is "
            "data/working/extraction-dry-run-{timestamp}.json; "
            "in real mode default is data/working/extraction-{timestamp}.json"
        ),
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="Maximum number of posts to process",
    )
    parser.add_argument(
        "--max-comments",
        type=int,
        default=80,
        help="Maximum comments per post to include in the prompt (default: %(default)s)",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Build prompts and preview only — no LLM calls",
    )
    parser.add_argument(
        "--model",
        default="google/gemini-2.5-flash-lite",
        help="Instructor model string (default: %(default)s)",
    )
    parser.add_argument(
        "--sleep-seconds",
        type=float,
        default=2.0,
        help="Sleep between post extractions for rate limiting (default: %(default)s)",
    )
    parser.add_argument(
        "--max-attempts",
        type=int,
        default=3,
        help="Total attempts per post for transient provider failures (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-seconds",
        type=float,
        default=5.0,
        help="Initial retry sleep before exponential backoff (default: %(default)s)",
    )
    parser.add_argument(
        "--backoff-multiplier",
        type=float,
        default=2.0,
        help="Exponential backoff multiplier per retry (default: %(default)s)",
    )
    return parser


def _latest_normalized() -> Path:
    """Return the most recent ``*.json`` in data/working/normalized/."""
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit(
            "[pipeline:extract] No normalized artifacts found — run normalize first"
        )
    return candidates[-1]


def _ensure_api_key() -> None:
    """Ensure ``GEMINI_API_KEY`` is set and expose it to the Google client."""
    gemini_key = os.environ.get("GEMINI_API_KEY")
    if gemini_key:
        os.environ["GOOGLE_API_KEY"] = gemini_key
        return
    raise SystemExit(
        "[pipeline:extract] GEMINI_API_KEY must be set "
        "for real extraction. Use --dry-run to preview prompts without a key."
    )


def _run_extraction(
    prompts: list[dict[str, Any]],
    model: str,
    sleep_seconds: float,
    max_attempts: int = 3,
    backoff_seconds: float = 5.0,
    backoff_multiplier: float = 2.0,
) -> tuple[list[dict[str, Any]], list[dict[str, Any]]]:
    """Call Instructor + Gemini for each prompt with per-post retry/backoff.

    Returns ``(results, errors)`` where each element is a list of dicts.
    """
    from instructor import from_provider

    client = from_provider(model)

    results: list[dict[str, Any]] = []
    errors: list[dict[str, Any]] = []

    for i, entry in enumerate(prompts, start=1):
        post_id = entry["reddit_post_id"]
        system = entry["system_prompt"]
        user = entry["user_prompt"]
        total = len(prompts)

        last_error: Exception | None = None

        for attempt in range(1, max_attempts + 1):
            try:
                print(
                    f"  [{i}/{total}] {post_id} → extracting … "
                    f"(attempt {attempt}/{max_attempts})"
                )
                extraction: PostExtraction = client.create(
                    response_model=PostExtraction,
                    messages=[
                        {"role": "system", "content": system},
                        {"role": "user", "content": user},
                    ],
                    max_retries=2,
                    generation_config={"temperature": 0.1},
                )
                # Success — record result and break retry loop
                result = extraction.model_dump()
                result["attempt_count"] = attempt
                results.append(result)
                rec_count = len(extraction.recommendations)
                print(
                    f"  [{i}/{total}] {post_id} → OK "
                    f"({rec_count} recommendations, attempt {attempt})"
                )
                last_error = None
                break

            except Exception as exc:
                last_error = exc
                if attempt < max_attempts:
                    wait = backoff_seconds * (backoff_multiplier ** (attempt - 1))
                    print(
                        f"  [{i}/{total}] {post_id} → attempt {attempt} "
                        f"failed: {exc}. Retrying in {wait:.1f}s …"
                    )
                    time.sleep(wait)
                else:
                    print(
                        f"  [{i}/{total}] {post_id} → FAILED "
                        f"after {max_attempts} attempts: {exc}"
                    )

        if last_error is not None:
            errors.append(
                {
                    "reddit_post_id": post_id,
                    "error": str(last_error),
                    "attempt_count": max_attempts,
                    "model": model,
                }
            )

        if i < total and sleep_seconds > 0:
            time.sleep(sleep_seconds)

    return results, errors


def _build_prompts(
    posts: list[dict[str, Any]],
    comments_by_post: dict[str, Any],
    max_comments: int,
) -> list[dict[str, Any]]:
    """Build prompt entries for each post."""
    prompts: list[dict[str, Any]] = []
    for post in posts:
        post_id = post.get("reddit_post_id", "?")
        comments = flatten_comments(
            comments_by_post, post_id, max_comments=max_comments
        )
        prompt = build_extraction_prompt(
            post, comments, max_comments=max_comments
        )
        prompts.append(
            {
                "reddit_post_id": post_id,
                "title_length": len(post.get("title", "")),
                "comment_count": len(comments),
                **prompt,
            }
        )
    return prompts


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    ensure_pipeline_dirs()

    # Resolve input --------------------------------------------------------
    input_path: Path
    if args.input is not None:
        input_path = Path(args.input)
    else:
        input_path = _latest_normalized()

    norm = read_json_artifact(input_path)
    posts = norm.get("posts", [])
    comments_by_post = norm.get("comments_by_post", {})

    if args.limit is not None:
        posts = posts[: args.limit]

    print(
        f"[pipeline:extract] Processing up to {len(posts)} posts from "
        f"{input_path.name} (dry-run={args.dry_run})"
    )

    # Build prompts (common to both modes) ---------------------------------
    prompts = _build_prompts(posts, comments_by_post, args.max_comments)

    if args.dry_run:
        slug = timestamp_slug()
        if args.out is None:
            out = working_dir() / f"extraction-dry-run-{slug}.json"
        else:
            out = Path(args.out)

        artifact: dict[str, Any] = {
            "status": "extraction_dry_run",
            "source": "pipeline.extract",
            "created_at": datetime.now(timezone.utc).isoformat(),
            "normalized_artifact": str(input_path),
            "args": {
                "dry_run": True,
                "limit": args.limit,
                "max_comments": args.max_comments,
                "max_attempts": args.max_attempts,
                "backoff_seconds": args.backoff_seconds,
                "backoff_multiplier": args.backoff_multiplier,
            },
            "posts_preview": [
                {
                    "reddit_post_id": p["reddit_post_id"],
                    "title_length": p.get("title_length", 0),
                    "comment_count": p["comment_count"],
                    "prompt_system_chars": len(p.get("system_prompt", "")),
                    "prompt_user_chars": len(p.get("user_prompt", "")),
                    "prompt_system": p.get("system_prompt", ""),
                    "prompt_user": p.get("user_prompt", ""),
                }
                for p in prompts
            ],
            "summary": {
                "post_count": len(prompts),
                "total_comment_count": sum(
                    p["comment_count"] for p in prompts
                ),
            },
        }

        write_json_artifact(out, artifact)

        print(
            f"[pipeline:extract] Dry-run complete: {len(prompts)} posts, "
            f"{artifact['summary']['total_comment_count']} comments"
        )
        print(f"[pipeline:extract] Artifact written to {out}")
        return

    # ── Real extraction path ─────────────────────────────────────────────
    _ensure_api_key()

    print(f"[pipeline:extract] Model: {args.model}")
    print(f"[pipeline:extract] Extracting …")

    results, errors = _run_extraction(
        prompts,
        model=args.model,
        sleep_seconds=args.sleep_seconds,
        max_attempts=args.max_attempts,
        backoff_seconds=args.backoff_seconds,
        backoff_multiplier=args.backoff_multiplier,
    )

    # Count total recommendations across successes
    recommendation_count = sum(
        len(r.get("recommendations", [])) for r in results
    )

    slug = timestamp_slug()
    if args.out is None:
        out = working_dir() / f"extraction-{slug}.json"
    else:
        out = Path(args.out)

    extraction_artifact: dict[str, Any] = {
        "status": "extracted",
        "source": "pipeline.extract",
        "extracted_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "model": args.model,
        "args": {
            "dry_run": False,
            "limit": args.limit,
            "max_comments": args.max_comments,
            "sleep_seconds": args.sleep_seconds,
            "max_attempts": args.max_attempts,
            "backoff_seconds": args.backoff_seconds,
            "backoff_multiplier": args.backoff_multiplier,
        },
        "results": results,
        "errors": errors,
        "summary": {
            "post_count": len(prompts),
            "success_count": len(results),
            "error_count": len(errors),
            "recommendation_count": recommendation_count,
        },
    }

    write_json_artifact(out, extraction_artifact)

    print(
        f"[pipeline:extract] Done: {len(results)} success, "
        f"{len(errors)} errors, {recommendation_count} recommendations"
    )
    print(f"[pipeline:extract] Artifact written to {out}")


if __name__ == "__main__":
    main()
