---
id: 12
title: "Add a JSON provider cache for TMDB and IGDB lookups"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Question

Add a JSON lookup cache for TMDB and IGDB resolutions, keyed by `candidate_key` (title + year + media_type, matching the existing `_candidate_key` helper). The cache mirrors the shape of the existing `assets-cache-*.json` artifacts and lives under `data/working/caches/`. On a cache hit, the enrichment loop reads the cached match record and skips the HTTP call; on a miss, the call goes out and the result is written to the cache. The cache is additive — `pipeline:enrich` accepts a `--no-cache` flag for force-refresh and a `--cache-path` flag for testing. Provider cache files are written incrementally (one entry per line as resolved) so a crashed run doesn't lose what it found. Verify with a no-cache run (writes the cache) followed by a cache-only run (zero HTTP calls, same match records).

## Resolution

Implemented by @fixer. Two files touched.

### New module: `apps/pipeline/src/pipeline/enrich_cache.py` (171 lines)

`ProviderCache` class — JSONL-backed, append-only, immediate `flush()` + `os.fsync()` on every `put()` so a crash mid-run doesn't lose resolved entries. Public API:

- `__init__(path, *, enabled=True)` — loads existing entries from the file on init (if it exists and is enabled); no-op when disabled (used for `--no-cache`).
- `get(key) -> dict | None` — returns the cached match record or None.
- `put(key, match) -> None` — appends `{"key", "match", "cached_at"}` as a single line, fsyncs, updates in-memory index (last write wins).
- `close()` — idempotent file handle close. `__enter__`/`__exit__` context manager support too.
- `_load()` — reads existing cache, skips malformed lines with a `WARNING:` print to stderr (doesn't error the run).

`make_cache(args)` — builds a `ProviderCache` from the parsed CLI namespace. `--no-cache` returns an `enabled=False` cache; `--cache-path` overrides the default `working_dir() / "caches" / "provider-cache.jsonl"`.

File format (one JSONL line per entry):

```json
{"key": "pulp fiction||movie", "match": {<full match record>}, "cached_at": "2026-07-14T15:52:00Z"}
```

`match` is the **full** match record — same shape that today ends up under `enrichment-*.json:matches[]`. Includes TMDB-specific fields (`tmdb_id`, `imdb_id`, `raw_result`) or IGDB-specific fields (`igdb_id`, `external_url`, `platforms`, `raw_result`) depending on media_type. Nothing filtered — a cache-only run is byte-equivalent to a no-cache run.

### Integration in `enrich.py` (+38 lines)

- Lines 268-276: `--no-cache` and `--cache-path` CLI args after `--include-adult`.
- Line 34: `from pipeline.enrich_cache import make_cache`.
- Line 386: `cache = make_cache(args)` — built once at the top of `main()`.
- Lines 494-501: cache check at the top of the per-candidate loop, before the TMDB/IGDB dispatch. Hit → append cached match, increment `cache_hit_count`, `continue`. Miss → increment `cache_miss_count`, fall through to dispatch.
- Lines 619, 684: `cache.put(cand["candidate_key"], match_record)` after each successful TMDB or IGDB match build.
- Line 724: `cache.close()` in the `finally` block (alongside the httpx session closes).
- Lines 458-460, 747-749: `no_cache` and `cache_path` recorded in both the dry-run and real-enrichment artifact `args`.
- Lines 760-761: `cache_hit_count` and `cache_miss_count` in the artifact's `summary`.

Unknown / unmatched / unsupported-media_type paths do **not** write to the cache. Only successful resolutions. (Future ticket: cache "no match" too, if it becomes useful.)

### Verification — three runs on the smoke extraction

All three runs use the same input (`data/working/extraction-20260714T141129Z.json`, 30 unique candidates) and produce byte-identical `matches[]` (verified by dict comparison, keyed by `candidate_key`):

| Run | Flag combo | cache_hit | cache_miss | Wall-clock | HTTP fired? |
|---|---|---|---|---|---|
| 1. No-cache | `--no-cache --out /tmp/nocache.json` | 0 | 30 | ~7s | yes (real) |
| 2. Cache-only | bogus `TMDB_ACCESS_TOKEN=invalid` `TWITCH_CLIENT_ID=invalid`, default cache | 29 | 1 | **0.38s** | **zero** (bogus tokens would have failed + retried) |
| 3. Partial-cache | `--cache-path /tmp/partial.jsonl` pre-seeded with one line | 1 | 29 | ~7s | yes (for 29 misses) |

The 1 cache miss in run 2 is the `unknown` media_type candidate — short-circuited before any provider call, so it doesn't make HTTP. That's why 29 hits + 1 miss with bogus env vars finishes in 0.38s: every HTTP call would have triggered the retry-with-backoff path (`max_attempts=3`, exponential `2s, 4s, 8s` = ~14s per failure minimum), and 0.38s rules that out.

### Files

- `apps/pipeline/src/pipeline/enrich_cache.py` (new, 171 lines)
- `apps/pipeline/src/pipeline/enrich.py` (+38 lines)
- `data/working/caches/provider-cache.jsonl` (auto-generated on first run, ~46KB for 29 entries)

No schema migrations, no D1 changes, no behavior change for the no-cache path. The cache is purely additive.

### Handoff to ticket 15 (Refactor enrich.py to async + integrate the provider cache)

The provider cache is now in place and works synchronously. Ticket 15 will rewrite the per-candidate loop as `asyncio.gather`'d fan-out. The cache module's API (`get`/`put`/`close`) is intentionally narrow so a swap to an async cache wrapper is mechanical: rewrite the call sites to `await cache.get_async(key)` / `await cache.put_async(key, match)`. The on-disk format doesn't change. If we ever need to do concurrent writes from multiple workers, the `put()` method's `flush()`+`fsync()` is already process-safe under the GIL, but a `fcntl.flock` around the file would be needed for cross-process safety — not needed yet, but easy to add.

### Handoff to ticket 18 (Run 1k end-to-end verification)

The cache should make the 1k verification's enrichment stage a no-op on second run: any rerun-during-verification can read the populated cache and skip the network. For the first run, it's still a real network call but the `cache_hit_count` / `cache_miss_count` summary fields give us visibility into whether the rate-limit / retry behavior is correct at 1k scale.
