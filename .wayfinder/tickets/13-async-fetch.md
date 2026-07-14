---
id: 13
title: "Refactor fetch.py to async with parallel comment-tree fetches"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Resolution

Replaced the serial comment-tree loop (and the `time.sleep(0.5)` between calls) with an async fan-out: `asyncio.Semaphore(8)` bounds concurrency, and each `client.get_comment_tree(...)` call is wrapped in `asyncio.to_thread` to run on the default thread-pool executor. We deliberately did **not** introduce `httpx.AsyncClient` — the existing `arcshiftwrap.ArcticShiftClient` is sync (uses `requests.Session` internally, with its own `sleep_seconds=1` and 429/504 retry logic), and wrapping individual calls in `to_thread` is the minimal change that achieves parallel fan-out without rewriting the client. Both `search_posts` and `get_comment_tree` are now called via `to_thread`. Concurrency is hardcoded as a module-level `_CONCURRENCY = 8` constant — no CLI flag, not recorded in the artifact. Per-stage wall-clock prints (`Search took Xs`, `Comment trees took Ys`) added — clears the map's per-stage-telemetry fog item for fetch. Verification: a 30-post fetch produces byte-identical artifacts (3,476,121 bytes) after masking `fetched_at` and every `_meta.retrieved_2nd_on`. A second run with a hardcoded concurrency-1 helper (test-only path, no flag) is also byte-identical, proving the fan-out doesn't change per-post results. Wall-clock: comment-tree stage dropped from ~85s (serial) to ~13-30s (concurrency=8, varies with Arctic Shift latency) — ~3-6× improvement; the ~14.5s of inter-post sleep is eliminated entirely. No rate-limit surprises at concurrency=8; `arcshiftwrap`'s per-call `sleep_seconds=1` runs in each thread and the sleeps overlap in parallel. The destination's mention of `httpx.AsyncClient` for fetch.py is therefore superseded by the to_thread plan (enrich.py in ticket 15 will be the one that genuinely needs httpx).

**Subsequent edit**: removed the originally-shipped `--concurrency` flag and `args.concurrency` artifact field — both are knobs we don't expect to tune, so they were hardcoded to a sane default (`_CONCURRENCY = 8`).

## Question

Rewrite `apps/pipeline/src/pipeline/fetch.py` to use `asyncio` + `httpx.AsyncClient`. The current code is a serial `for` loop over posts with `time.sleep(0.5)` between comment-tree fetches; for 1k posts that's ~8 minutes of dead time on sleep alone, before the per-call latency. After the refactor, comment-tree fetches fan out in parallel with a small bounded concurrency (e.g. `asyncio.Semaphore(8)`), no inter-call sleep, and a shared `httpx.AsyncClient` whose lifecycle spans the whole run. The Arctic Shift client (`arcshiftwrap.ArcticShiftClient`) is sync; wrap its methods in `asyncio.to_thread` rather than replacing it. Output artifact shape is unchanged — same fields, same paths, same `data/raw/arctic-shift-*.json` contract. Verify by re-running the existing 30-post fetch and confirming the artifact byte-compares (or JSON-compares modulo `fetched_at`) to the prior result.
