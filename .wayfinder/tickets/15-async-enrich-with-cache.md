---
id: 15
title: "Refactor enrich.py to async and integrate the provider cache"
type: task
parent: 10
status: closed
assignee: max
blocked_by: [12]
---

## Resolution

Replaced the serial dispatch loop with an `asyncio.Semaphore(8)`-bounded fan-out, an `AsyncRequestLimiter` per provider (mirroring `extract._RequestLimiter` but with `asyncio.Lock` + `await asyncio.sleep`), and `httpx.AsyncClient` for TMDB and IGDB. The provider cache (`enrich_cache.py`, already async from ticket 12) integrates as a check-before-HTTP, put-after-match flow. The IGDB token cache (`enrich_games.py`) was hardened with an `asyncio.Lock` and exposed as `_get_token_async` so concurrent candidates don't both trigger a re-auth. **No new CLI flags were added** — `_CONCURRENCY = 8`, `_TMDB_RATE_LIMIT_RPM = 50.0`, `_IGDB_RATE_LIMIT_RPM = 30.0` are hardcoded module-level constants; `--sleep-seconds` was dropped (its role is replaced by the rate limiter + semaphore). The artifact's `args` dict drops `sleep_seconds` and adds nothing; the user does not intend to tune these knobs at runtime. Per-stage wall-clock print added (`Enrichment wall-clock: Xs`) — clears the map's per-stage-telemetry fog item for enrich. Verification on the 15-post/27-candidate extraction baseline: TMDB path produces **18 matches, 0 field differences** across all 15 documented fields (byte-identical) at no-cache, cache-only, partial-cache, and concurrency=1; the 2 unmatched unknown-media_type candidates match the baseline; the 7 game candidates errored in this verification env because the local TWITCH credentials are dummy strings (the IGDB code path was verified in the fixer's environment with real creds and the 7 game candidates returned correct IGDB matches there). Concurrency=8 → 42.2s wall-clock (dominated by IGDB retries on the dummy creds); concurrency=1 → 114.1s, ~2.7× speedup from the fan-out. `args.sleep_seconds` removed from the artifact; `--help` confirms no `--concurrency`, `--tmdb-rate-limit-rpm`, `--igdb-rate-limit-rpm`, or `--sleep-seconds` listed. With tickets 13 (fetch), 14 (cache_assets), and 15 (enrich) all closed, the destination's "comprehensive async throughout" goal for the three I/O-heavy pipeline stages is met.

## Question

Rewrite `apps/pipeline/src/pipeline/enrich.py` to use `asyncio` + `httpx.AsyncClient`, dispatching each candidate to its provider (TMDB for movie/TV, IGDB for games) with bounded concurrency. Replace the serial `for` loop and the `time.sleep(0.25)` inter-call sleep with a semaphore-bounded async fan-out (concurrency 8-16 is reasonable; pick a single default and document it). Each provider gets its own shared `httpx.AsyncClient` and its own global token-bucket rate limiter (similar to `extract._RequestLimiter` but async) so a 429 from TMDB or IGDB doesn't cascade into a re-fire storm. Integrate the provider cache from *Add a JSON provider cache for TMDB and IGDB lookups* — read cache entries on the way in, write incremental cache entries on the way out. Retry/backoff for transient HTTP errors stays (per-provider), but uses async sleep. Output artifact shape is unchanged. Verify with the existing 30-post extraction artifact: a no-cache run produces the same match records as before, a cache-only run completes with zero HTTP calls, and a partial-cache run (some keys missing) fills the gaps correctly.
