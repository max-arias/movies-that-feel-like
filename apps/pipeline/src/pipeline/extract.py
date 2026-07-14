"""
pipeline.extract — LLM extraction of recommendations and vibe summaries
from normalized posts and their comment trees.

Dry-run mode (``--dry-run``) builds prompts without calling any LLM.
Real mode supports two providers:

* **OpenCode Go** (default) — model ``deepseek-v4-flash``, ``OPENCODE_GO_API_KEY``
  env var, and the OpenCode Go OpenAI-compatible endpoint.

* **OpenAI-compatible** — model ``openai/…`` or bare model id,
  ``OPENAI_API_KEY`` or ``OPENCODE_GO_API_KEY`` env var, optional
  ``--api-base``.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import random
import sys
import threading
import time
import email.utils
import fcntl
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

from pipeline.artifacts import read_json_artifact, timestamp_slug, write_json_artifact
from pipeline.extraction_input import build_extraction_prompt, flatten_comments
from pipeline.models import PostExtraction
from pipeline.paths import checkpoints_dir, ensure_pipeline_dirs, normalized_dir, working_dir

EXTRACTION_SCHEMA_VERSION = "post-extraction-v2"


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Extract recommendations and vibe summaries from normalized posts.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Environment:\n"
            "  OPENCODE_GO_API_KEY     API key for the default OpenCode Go provider.\n"
            "  OPENAI_API_KEY          API key for other OpenAI-compatible providers.\n"
            "  OPENAI_BASE_URL         Override base URL for OpenAI-compatible.\n"
            "\nRetry (per-post):\n"
            "  On transient provider failures the call is retried with\n"
            "  exponential backoff: wait = backoff-seconds * backoff-multiplier^(attempt-1).\n"
            "  After max-attempts the error is recorded and the run fails safely.\n"
            "\nExamples:\n"
            "  # Dry-run — no API key needed\n"
            "  pipeline:extract --dry-run --limit 1\n"
            "\n"
            "  # OpenCode Go extraction (default model and endpoint)\n"
            "  OPENCODE_GO_API_KEY=... pipeline:extract --limit 5 --max-attempts 5\n"
            "\n"
            "  # OpenAI-compatible (e.g. opencode-go)\n"
            "  OPENCODE_GO_API_KEY=... pipeline:extract --model deepseek-v4-flash\n"
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
        default="deepseek-v4-flash",
        help=(
            "Model identifier.  Prefix with ``google/`` for Gemini, "
            "``openai/`` or bare name for OpenAI-compatible "
            "(default: %(default)s)"
        ),
    )
    parser.add_argument(
        "--mode",
        default=None,
        choices=["json", "md_json", "tools"],
        help=(
            "Instructor extraction mode.  For OpenAI-compatible providers "
            "defaults to ``json``; for Gemini defaults to auto-detected. "
            "Use ``md_json`` as fallback for models that don't support native JSON mode."
        ),
    )
    parser.add_argument(
        "--api-base",
        default=None,
        help=(
            "Custom OpenAI-compatible base URL "
            "(default: https://opencode.ai/zen/go/v1 for the default "
            "OpenCode Go provider)"
        ),
    )
    parser.add_argument("--sleep-seconds", type=float, default=0.0,
                        help="Deprecated and ignored; use --rate-limit-rpm")
    parser.add_argument("--concurrency", type=int, default=8, help="Maximum posts in flight (default: %(default)s)")
    parser.add_argument("--rate-limit-rpm", type=float, default=60.0, help="Global request-start limit (default: %(default)s RPM)")
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
    parser.add_argument(
        "--allow-errors",
        action="store_true",
        help="Explicitly allow failed posts in the output (unsafe; consumers may still reject it)",
    )
    parser.add_argument("--allow-empty", action="store_true", help=argparse.SUPPRESS)
    return parser


def _latest_normalized() -> Path:
    """Return the most recent ``*.json`` in data/working/normalized/."""
    candidates = sorted(normalized_dir().glob("*.json"))
    if not candidates:
        raise SystemExit(
            "[pipeline:extract] No normalized artifacts found — run normalize first"
        )
    return candidates[-1]


def _detect_provider(model: str) -> str:
    """Return ``'google'`` or ``'openai'`` based on *model*."""
    # google/… is Gemini; everything else (openai/… or bare) is OpenAI-compatible
    if model.startswith("google/"):
        return "google"
    return "openai"


def _resolve_openai_config(
    model: str, api_base: str | None
) -> tuple[str, str, str | None]:
    """Resolve OpenAI-compatible credentials and model name.

    Returns ``(actual_model, api_key, resolved_base_url)``.
    *actual_model* strips ``openai/`` prefix when present.
    """
    actual_model = model.removeprefix("openai/")

    # The default model is intentionally tied to OpenCode Go. Other model
    # selections retain the existing OPENAI_API_KEY-compatible path.
    opencode_key = os.environ.get("OPENCODE_GO_API_KEY")
    if model == "deepseek-v4-flash" and not opencode_key:
        raise SystemExit(
            "[pipeline:extract] OPENCODE_GO_API_KEY must be set for the "
            "default OpenCode Go model. Use --dry-run to preview prompts without a key."
        )
    api_key = opencode_key or os.environ.get("OPENAI_API_KEY")

    # Base-URL resolution: CLI arg > OPENAI_BASE_URL > opencode-go default.
    resolved_base = api_base or os.environ.get("OPENAI_BASE_URL")
    if (
        not resolved_base
        and opencode_key
    ):
        resolved_base = "https://opencode.ai/zen/go/v1"

    if not api_key:
        raise SystemExit(
            "[pipeline:extract] OPENAI_API_KEY or OPENCODE_GO_API_KEY "
            "must be set for OpenAI-compatible models. "
            "Use --dry-run to preview prompts without a key."
        )

    return actual_model, api_key, resolved_base


def _build_extraction_client(
    provider: str,
    model: str,
    mode: str | None,
    api_base: str | None,
) -> tuple[Any, str, dict[str, Any]]:
    """Build an Instructor client for *provider*.

    Returns ``(client, actual_model, audit)`` where *audit* is a
    serialisable dict of provider metadata (no secrets).
    """
    audit: dict[str, Any] = {}

    if provider == "google":
        from instructor import from_provider

        # Expose GEMINI_API_KEY as GOOGLE_API_KEY for the Google client.
        gemini_key = os.environ.get("GEMINI_API_KEY")
        if not gemini_key:
            raise SystemExit(
                "[pipeline:extract] GEMINI_API_KEY must be set "
                "for Google models. Use --dry-run to preview without a key."
            )
        os.environ["GOOGLE_API_KEY"] = gemini_key

        client = from_provider(model)
        audit["provider"] = "google"
        audit["mode"] = mode or "auto"
        return client, model, audit

    # ── OpenAI-compatible ─────────────────────────────────────────────
    import instructor
    from openai import OpenAI

    actual_model, api_key, resolved_base = _resolve_openai_config(
        model, api_base
    )

    import httpx
    openai_client = OpenAI(
        api_key=api_key, base_url=resolved_base,
        timeout=httpx.Timeout(180.0, connect=10.0), max_retries=0,
    )

    # Mode selection: default to JSON for OpenAI-compatible.
    instr_mode = instructor.Mode.JSON
    if mode == "md_json":
        instr_mode = instructor.Mode.MD_JSON
    elif mode == "tools":
        instr_mode = instructor.Mode.TOOLS

    client = instructor.from_openai(openai_client, mode=instr_mode)

    audit["provider"] = "openai"
    audit["mode"] = mode or "json"
    audit["api_base_set"] = resolved_base is not None
    audit["api_base"] = resolved_base
    return client, actual_model, audit


class _RequestLimiter:
    def __init__(self, rpm: float) -> None:
        self.interval = 60.0 / rpm if rpm > 0 else 0.0
        self.lock = threading.Lock()
        self.next_start = 0.0
        self.cooldown_until = 0.0

    def wait(self) -> None:
        with self.lock:
            now = time.monotonic()
            start = max(now, self.next_start, self.cooldown_until)
            self.next_start = start + self.interval
        if start > now:
            time.sleep(start - now)

    def cooldown(self, seconds: float) -> None:
        with self.lock:
            self.cooldown_until = max(self.cooldown_until, time.monotonic() + max(0, seconds))


def _malformed_model_json(value: BaseException | str) -> bool:
    """Recognize provider output parse failures, not local schema/program bugs."""
    text = str(value).lower()
    return "invalid json" in text and "invalid escape" in text


def _retryable(exc: Exception) -> tuple[bool, float | None]:
    """Classify through Instructor wrappers and exception chains."""
    seen: set[int] = set()
    stack: list[BaseException] = [exc]
    while stack:
        current = stack.pop()
        if id(current) in seen:
            continue
        seen.add(id(current))
        response = getattr(current, "response", None)
        status = getattr(response, "status_code", None)
        if status is not None:
            if status not in (408, 429) and not (500 <= status <= 599):
                return False, None
            headers = getattr(response, "headers", {}) or {}
            value = headers.get("retry-after-ms") or headers.get("Retry-After") or headers.get("retry-after")
            delay = None
            if value:
                try:
                    delay = float(value) / (1000 if "ms" in ("retry-after-ms" if headers.get("retry-after-ms") else "") else 1)
                except (TypeError, ValueError):
                    try:
                        delay = max(0.0, email.utils.parsedate_to_datetime(value).timestamp() - time.time())
                    except (TypeError, ValueError, OverflowError):
                        pass
            return True, delay
        name = type(current).__name__.lower()
        if _malformed_model_json(current):
            return True, None
        if any(x in name for x in ("timeout", "connection", "connect", "read", "transport")):
            return True, None
        for attr in ("last_error", "__cause__", "__context__"):
            nested = getattr(current, attr, None)
            if isinstance(nested, BaseException):
                stack.append(nested)
    return False, None


def _run_extraction(
    prompts: list[dict[str, Any]],
    sleep_seconds: float,
    max_attempts: int,
    backoff_seconds: float,
    backoff_multiplier: float,
    *,
    client: Any,
    actual_model: str,
    provider: str,
    concurrency: int = 3,
    rate_limit_rpm: float = 6.0,
    on_complete: Any = None,
) -> tuple[list[dict[str, Any]], list[dict[str, Any]]]:
    """Call Instructor for each prompt with per-post retry/backoff.

    *client* is the pre-built Instructor client, *actual_model* the
    provider-specific model id, and *provider* ``'google'`` or ``'openai'``.

    Returns ``(results, errors)`` where each element is a list of dicts.
    """
    limiter = _RequestLimiter(rate_limit_rpm)

    # Build the create() kwargs common to both providers.
    def process(item: tuple[int, dict[str, Any]]) -> tuple[int, dict[str, Any] | None, dict[str, Any] | None]:
        i, entry = item
        post_id = entry["reddit_post_id"]
        system = entry["system_prompt"]
        user = entry["user_prompt"]
        total = len(prompts)

        create_kwargs: dict[str, Any] = {
            "response_model": PostExtraction,
            "messages": [
                {"role": "system", "content": system},
                {"role": "user", "content": user},
            ],
            "max_retries": 0,
        }
        if provider == "google":
            create_kwargs["generation_config"] = {"temperature": 0.1}
        else:
            create_kwargs["temperature"] = 0.1
            create_kwargs["model"] = actual_model

        last_error: Exception | None = None
        calls = 0
        retry = False

        for attempt in range(1, max_attempts + 1):
            try:
                limiter.wait(); calls += 1
                print(f"  [{i}/{total}] {post_id} extracting (attempt {attempt}/{max_attempts})", flush=True)
                extraction: PostExtraction = client.create(**create_kwargs)
                # Success — record result and break retry loop
                result = extraction.model_dump()
                # The model is not allowed to choose the identity of its result.
                result["reddit_post_id"] = post_id
                result["attempt_count"] = attempt
                rec_count = len(extraction.recommendations)
                print(f"  [{i}/{total}] {post_id} OK ({rec_count} recommendations)", flush=True)
                last_error = None
                return i, result, None

            except Exception as exc:
                last_error = exc
                retry, retry_after = _retryable(exc)
                if attempt < max_attempts and retry:
                    if getattr(getattr(exc, "response", None), "status_code", None) == 429 or retry_after is not None:
                        limiter.cooldown(retry_after or 1.0)
                    wait = retry_after if retry_after is not None else min(180.0, backoff_seconds * (backoff_multiplier ** (attempt - 1))) * random.uniform(.8, 1.2)
                    print(f"  [{i}/{total}] retrying in {wait:.1f}s: {exc}", flush=True)
                    time.sleep(wait)
                else:
                    break

        if last_error is not None:
            error = {
                    "reddit_post_id": post_id,
                    "error": str(last_error),
                    "attempt_count": calls,
                    "model": actual_model,
                    "retryable": retry,
                }
            print(f"  [{i}/{total}] {post_id} FAILED: {last_error}", flush=True)
            return i, None, error
        return i, None, {"reddit_post_id": post_id, "error": "unknown extraction failure", "attempt_count": calls, "model": actual_model}

    by_index: dict[int, tuple[dict[str, Any] | None, dict[str, Any] | None]] = {}
    with ThreadPoolExecutor(max_workers=max(1, concurrency)) as executor:
        iterator = iter(enumerate(prompts, 1))
        futures = {executor.submit(process, item): item for item in [next(iterator, None) for _ in range(max(1, concurrency))] if item is not None}
        try:
            while futures:
                for future in as_completed(list(futures)):
                    item = futures.pop(future)
                    i, result, error = future.result()
                    by_index[i] = (result, error)
                    if on_complete:
                        on_complete(i, prompts[i - 1], result, error)
                    nxt = next(iterator, None)
                    if nxt is not None:
                        futures[executor.submit(process, nxt)] = nxt
                    break
        except BaseException:
            for future in futures:
                future.cancel()
            raise
    return ([x for i in sorted(by_index) if (x := by_index[i][0]) is not None],
            [x for i in sorted(by_index) if (x := by_index[i][1]) is not None])


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
            "model": args.model,
            "args": {
                "dry_run": True,
                "limit": args.limit,
                "max_comments": args.max_comments,
                "max_attempts": args.max_attempts,
                "backoff_seconds": args.backoff_seconds,
                "backoff_multiplier": args.backoff_multiplier,
                "allow_errors": args.allow_errors,
                "allow_empty": args.allow_empty,
                "mode": args.mode,
                "api_base": args.api_base,
                "provider": {
                    "provider": _detect_provider(args.model),
                    "mode": args.mode or ("json" if _detect_provider(args.model) == "openai" else "auto"),
                    "api_base_set": args.api_base is not None,
                },
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
    provider = _detect_provider(args.model)
    print(f"[pipeline:extract] Provider: {provider}")
    print(f"[pipeline:extract] Model:    {args.model}")
    if args.mode:
        print(f"[pipeline:extract] Mode:     {args.mode}")
    if args.api_base:
        print(f"[pipeline:extract] API base: {args.api_base}")

    client, actual_model, provider_audit = _build_extraction_client(
        provider=provider,
        model=args.model,
        mode=args.mode,
        api_base=args.api_base,
    )

    # Operational tuning must not invalidate completed work; output-affecting
    # provider/model/mode and prompt/schema inputs must.
    schema_content = json.dumps(PostExtraction.model_json_schema(), sort_keys=True)
    identity = {"model": actual_model, "requested_model": args.model,
                "mode": provider_audit.get("mode"), "provider": provider,
                "api_base": provider_audit.get("api_base"),
                "max_comments": args.max_comments, "limit": args.limit,
                "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": schema_content}
    run_id = hashlib.sha256((input_path.read_bytes().decode("utf-8") + json.dumps(identity, sort_keys=True)).encode()).hexdigest()[:20]
    checkpoint = checkpoints_dir() / f"{run_id}.jsonl"
    lock_handle = (checkpoints_dir() / f"{run_id}.lock").open("a+", encoding="utf-8")
    try:
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
    except BlockingIOError:
        lock_handle.close()
        raise SystemExit(f"[pipeline:extract] checkpoint run is already locked: {run_id}")
    checkpoint_records: dict[int, dict[str, Any]] = {}
    def prompt_hash(prompt: dict[str, Any]) -> str:
        value = {"system": prompt.get("system_prompt", ""), "user": prompt.get("user_prompt", ""),
                 "schema_version": EXTRACTION_SCHEMA_VERSION, "schema": schema_content}
        return hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
    if checkpoint.exists():
        for line in checkpoint.read_text(encoding="utf-8").splitlines():
            try:
                record = json.loads(line)
                if record.get("prompt_hash") == prompt_hash(prompts[record["ordinal"]]):
                    # Successful records and permanent terminal errors are
                    # resumable; retryable errors must be attempted again.
                    error = record.get("error")
                    if isinstance(error, dict) and (
                        error.get("retryable") or _malformed_model_json(error.get("error", ""))
                    ):
                        continue
                    if record.get("result") is not None or isinstance(error, dict):
                        checkpoint_records[record["ordinal"]] = record
            except (ValueError, KeyError, IndexError, json.JSONDecodeError):
                continue
    pending = []
    for ordinal, prompt in enumerate(prompts):
        if ordinal not in checkpoint_records:
            prompt["ordinal"] = ordinal
            pending.append(prompt)
    checkpoint.parent.mkdir(parents=True, exist_ok=True)
    checkpoint_handle = checkpoint.open("a", encoding="utf-8")
    def save_checkpoint(i: int, prompt: dict[str, Any], result: Any, error: Any) -> None:
        ordinal = prompt["ordinal"]
        record = {"ordinal": ordinal, "reddit_post_id": prompt["reddit_post_id"],
                  "prompt_hash": prompt_hash(prompt), "schema_version": EXTRACTION_SCHEMA_VERSION,
                  "result": result, "error": error, "duration_seconds": 0, "provider_call_count": (error or {}).get("attempt_count", 1) if error else result.get("attempt_count", 1)}
        checkpoint_handle.write(json.dumps(record, ensure_ascii=False) + "\n")
        checkpoint_handle.flush(); os.fsync(checkpoint_handle.fileno())

    print(f"[pipeline:extract] Extracting …")

    try:
        results, errors = _run_extraction(
            pending, sleep_seconds=args.sleep_seconds, max_attempts=args.max_attempts,
            backoff_seconds=args.backoff_seconds, backoff_multiplier=args.backoff_multiplier,
            client=client, actual_model=actual_model, provider=provider,
            concurrency=args.concurrency, rate_limit_rpm=args.rate_limit_rpm,
            on_complete=save_checkpoint,
        )
    finally:
        checkpoint_handle.close()
        fcntl.flock(lock_handle.fileno(), fcntl.LOCK_UN)
        lock_handle.close()
    cached_results = [r["result"] for r in checkpoint_records.values() if r.get("result") is not None]
    cached_errors = [r["error"] for r in checkpoint_records.values() if r.get("error") is not None]
    results = cached_results + results
    errors = cached_errors + errors

    # Count total recommendations across successes
    recommendation_count = sum(
        len(r.get("recommendations", [])) for r in results
    )

    slug = timestamp_slug()
    if args.out is None:
        out = working_dir() / f"extraction-{slug}.json"
    else:
        out = Path(args.out)

    # ── Failed-extraction safeguard ──────────────────────────────────
    success_count = len(results)
    error_count = len(errors)
    is_failed = error_count > 0

    if is_failed and not (args.allow_errors or args.allow_empty):
        artifact_status = "failed"
    else:
        artifact_status = "extracted"

    extraction_artifact: dict[str, Any] = {
        "status": artifact_status,
        "source": "pipeline.extract",
        "extracted_at": datetime.now(timezone.utc).isoformat(),
        "normalized_artifact": str(input_path),
        "model": args.model,
        "args": {
            "dry_run": False,
            "limit": args.limit,
            "max_comments": args.max_comments,
            "sleep_seconds": args.sleep_seconds,
            "concurrency": args.concurrency,
            "rate_limit_rpm": args.rate_limit_rpm,
            "max_attempts": args.max_attempts,
            "backoff_seconds": args.backoff_seconds,
            "backoff_multiplier": args.backoff_multiplier,
            "allow_empty": args.allow_empty,
            "mode": args.mode,
            "api_base": args.api_base,
            "provider": provider_audit,
        },
        "results": results,
        "errors": errors,
        "summary": {
            "post_count": len(prompts),
            "success_count": success_count,
            "error_count": error_count,
            "target_count": len(prompts),
            "completed_count": success_count + error_count,
            "pending_count": 0,
            "recommendation_count": recommendation_count,
        },
    }

    write_json_artifact(out, extraction_artifact)

    if is_failed and not (args.allow_errors or args.allow_empty):
        print(
            f"[pipeline:extract] FAILED: 0 successes, {error_count} errors. "
            f"Use --allow-errors to override."
        )
        print(f"[pipeline:extract] Artifact written to {out}")
        sys.exit(1)

    print(
        f"[pipeline:extract] Done: {success_count} success, "
        f"{error_count} errors, {recommendation_count} recommendations"
    )
    print(f"[pipeline:extract] Artifact written to {out}")


if __name__ == "__main__":
    main()
