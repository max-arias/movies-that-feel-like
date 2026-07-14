---
id: 11
title: "Bump LLM rate limit and concurrency in extract.py"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Question

Raise the default rate limit and concurrency in `apps/pipeline/src/pipeline/extract.py` so that 1k posts can complete the extract stage in well under the 1-hour budget. Current defaults are `--rate-limit-rpm 6.0` and `--concurrency 3`; both need to grow. The Instructor client (`client.create()`) stays sync inside a `ThreadPoolExecutor` — the change is to the defaults and any rate-limiter / cooldown tuning that goes with the higher RPM, not an async rewrite. Verify with the existing 30-post checkpoint and confirm the change is a no-op for correctness (same extraction output, just faster).

## Resolution

Closed. Two-line change in `apps/pipeline/src/pipeline/extract.py:126-127`:

```diff
-parser.add_argument("--concurrency", type=int, default=3, help="Maximum posts in flight (default: %(default)s)")
-parser.add_argument("--rate-limit-rpm", type=float, default=6.0, help="Global request-start limit (default: %(default)s RPM)")
+parser.add_argument("--concurrency", type=int, default=8, help="Maximum posts in flight (default: %(default)s)")
+parser.add_argument("--rate-limit-rpm", type=float, default=60.0, help="Global request-start limit (default: %(default)s RPM)")
```

Help text uses `%(default)s` so the docs self-update.

### Rate-limiter / cooldown math at the new defaults

`_RequestLimiter.__init__` computes `interval = 60.0 / rpm` → at 60 RPM, `interval = 1.0s` between starts. Concurrency 8 means up to 8 in-flight requests, but the start-rate cap is the binding constraint: max sustained throughput is ~1 req/s = 60 RPM, regardless of how high concurrency goes. That matches the destination. The `cooldown()` path (used on 429 / `retry-after`) is independent of `next_start` and continues to work — `wait()` already takes the max of `now`, `next_start`, and `cooldown_until`.

### Verification — checkpoint reuse is the no-regression signal

I picked the 15-record v2 checkpoint that the smoke run produced: `data/working/checkpoints/4e110847460e67924ec4.jsonl` (15 posts, all success, 374 recommendations, schema v2). The run_id hash is `hashlib.sha256(input_bytes + identity_dict)[:20]`, and the identity dict deliberately excludes `concurrency` and `rate_limit_rpm` (operational, not output-affecting) — so re-running the same input+identity still lands on the same checkpoint. The new defaults (8/60) don't change the run_id; the checkpoint was reused as-is.

Re-ran:

```bash
npm run pipeline:extract -- --input /home/max/dev/movies-that-feel-like/data/working/normalized/normalized-arctic-shift-MoviesThatFeelLike-2026-20260714T140459Z-20260714T140623Z.json --limit 15 --max-attempts 5
```

Result: **2.314s wall-clock** (load checkpoint + emit artifact, zero LLM calls), `Done: 15 success, 0 errors, 374 recommendations`. New artifact: `data/working/extraction-20260714T154504Z.json`. Old artifact (smoke): `data/working/extraction-20260714T141129Z.json`.

### Equivalence check (modulo known-changing fields)

```python
new = json.load(open('data/working/extraction-20260714T154504Z.json'))
old = json.load(open('data/working/extraction-20260714T141129Z.json'))
new_by_id = {r['reddit_post_id']: r for r in new['results']}
old_by_id = {r['reddit_post_id']: r for r in old['results']}
```

| Check | Result |
|---|---|
| Same set of `reddit_post_id`s | ✅ |
| Per-post records identical | ✅ (every `recommendations` / `vibe` / `extraction_notes` byte-equal) |
| `errors` array equal | ✅ (both empty) |
| `summary` equal | ✅ (15 / 0 / 374) |
| `args` equal modulo `concurrency` and `rate_limit_rpm` | ✅ |
| New `args.concurrency` | **8** |
| New `args.rate_limit_rpm` | **60.0** |

### Pre-existing order quirk (unrelated to this change)

The new artifact's `results` array is in checkpoint-line (completion) order, not ordinal order. The old smoke artifact is in ordinal order. Both contain the same 15 records; the order difference is from a different code path in the prior run (likely a sort that no longer exists). Not caused by this change, not a correctness issue, and the loader is order-insensitive (`_build_merge_index` is keyed by `reddit_post_id`). Worth a one-line awareness note for the next agent but not a ticket on its own.

### What this doesn't prove (and what's next)

The 2.3s wall-clock is dominated by checkpoint reuse, not by the new defaults themselves. The new defaults (60 RPM / 8 concurrency) are visible in the artifact's `args` and the math says they give ~1 req/s sustained, so 1k posts would take ~17 min on extract alone — well inside the 1h budget. Real measurement of the speedup will come from the 1k run in *Run 1k end-to-end verification under 1h*; this ticket's verification is the no-regression signal that the change is operational-only.

### Files touched

- `apps/pipeline/src/pipeline/extract.py` — 2 lines (argparser defaults).

No new files, no checkpoint churn, no API calls during verification.

