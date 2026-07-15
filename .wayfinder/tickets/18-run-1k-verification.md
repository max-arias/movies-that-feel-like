---
id: 18
title: "Run 1k end-to-end verification under 1 hour, with deployable migration"
type: task
parent: 10
status: closed
assignee: max
blocked_by: [13, 14, 15, 17, 20, 22]
---

## Question

This is the exit ticket. The destination has two halves:

1. **Runtime** — run the full pipeline end-to-end on the 1k-post dataset from *Fetch enough data to total 1k posts (multi-year)*: `pipeline:fetch` (already done) → `pipeline:normalize` → `pipeline:cache-assets` → `pipeline:extract` → `pipeline:enrich` → `pipeline:load` (per ticket 19 — the migration is emitted unconditionally, no flag). The acceptance signal is wall-clock: the run completes in under 1 hour total. Each stage's wall-clock is printed at start and finish so we can see where the budget went. If the run is over 1h, file a follow-up ticket describing which stage(s) blew the budget and which refactor (or unstarted ticket from this map's fog) needs to be re-scoped.

2. **Deployable migration** — the run's final step (`pipeline:load`) writes a file to `packages/db/migrations/NNNN_seed_<TS>.sql`. That file is then (a) auto-committed and pushed by ticket 20's git hook, and (b) verified to apply cleanly to a fresh local D1 via `wrangler d1 migrations apply <DB> --local`, and (c) verified to apply cleanly to a fresh remote-shaped D1 via `wrangler d1 migrations apply <DB> --remote` (or `--local` against a database whose `database_id` matches the prod one, if a real remote isn't available in this env). All three applies must succeed and produce the expected row counts.

Correctness at 1k: spot-check a handful of `imported_vibe_posts.status='publishable'` rows, confirm recommendations are linked to TMDB/IGDB IDs, and confirm the local D1 has the expected counts. The data migration's `INSERT OR IGNORE` semantics are exercised by applying the same migration twice (the second apply is a no-op — same row counts, no errors).
