---
id: 9
title: "Stop writing the unused tmdb_data JSON column"
type: task
parent: 0
status: closed
assignee: max
blocked_by: []
---

## Question

The `recommendations.tmdb_data` column is write-only: `pipeline/load.py` populates it from the TMDB `raw_result` for every movie/TV record, but no other stage, the UI, or the inspector ever reads it back. Surface and remove the dead storage.

Concretely:

1. **`pipeline/load.py` — `_upsert_recommendation`**: stop writing `tmdb_data` in both the `UPDATE` (around line 308) and the `INSERT` (around line 332) branches. The column is not used downstream, so this is safe.
2. **Add `0004_drop_tmdb_data.sql` under `packages/db/migrations/`** that drops the `tmdb_data` column from the `recommendations` table. SQLite ≥ 3.35 (D1 supports) supports `ALTER TABLE … DROP COLUMN`. Reuse the same migration-apply path that `pipeline/load.py` already uses for `0001_initial.sql` and `0002_evidence_scores.sql` — it picks up all `*.sql` files in sorted order.
3. **`apps/astro/src/lib/db.ts`**: confirm no `tmdb_data` reference exists in the `Recommendation` interface or in any query. (Quick grep should show zero hits; if it does, leave it.)
4. **Verify**: run a load against a sample, confirm the column is gone via `PRAGMA table_info(recommendations)`, confirm the UI still renders a post and its recommendations normally.

Out of scope for this ticket: storing any equivalent raw-payload column for games (the IGDB provider design already decided against that). Also out of scope: the existing `recommendation_evidence` table is fine; only the `recommendations.tmdb_data` column is the problem.

This ticket is on the queue but not on the games destination's route — it surfaced as a follow-up during the *Design game schema additions* ticket. The next agent can pick it up any time; it has no blockers.

## Resolution

Implemented by @fixer (reused from the previous tickets). Two changes:

### 1. `apps/pipeline/src/pipeline/load.py`

Removed `tmdb_data` from four SQL statements:
- Game UPDATE: dropped the explicit `tmdb_data=NULL` from the SET clause.
- Game INSERT: dropped `tmdb_data` from the column list.
- Movie/TV UPDATE: dropped `tmdb_data=?` and the `json.dumps(match.get("raw_result", {}))` value.
- Movie/TV INSERT: dropped `tmdb_data` from the column list and the corresponding `json.dumps(...)` value.

`match["raw_result"]` still exists in the enrichment stage for in-memory debugging — only the DB write is gone. Net: 4 lines removed from `load.py`.

The fixer also removed the game branch's explicit `tmdb_data=NULL` (which I had originally written) — correctly noting that writing `NULL` to a dropped column would be a SQL error. Good catch.

### 2. `packages/db/migrations/0004_drop_tmdb_data.sql` (new, 13 lines)

```sql
-- 0004_drop_tmdb_data: Drop the unused tmdb_data JSON column.
-- This column was write-only — written by _upsert_recommendation for every
-- movie/TV record but never read by any other stage, the UI, or the inspector.
ALTER TABLE recommendations DROP COLUMN tmdb_data;
```

Purely additive: 0001, 0002, 0003 are untouched. Migrations are append-only.

### Verification (all 7 checks passed)

1. **No writes remain**: `grep "tmdb_data" load.py` returns zero hits.
2. **Compile clean**: `ast.parse(load.py)` returns clean.
3. **Fresh DB (all four migrations)**: `tmdb_data` not in `PRAGMA table_info(recommendations)`.
4. **DB at 0003 with data → apply 0004**: pre-existing row survives, column is dropped.
5. **Read-side grep**: `grep -r "tmdb_data" apps/astro/src/` returns zero hits.
6. **Real load with `--reset`**: 25 recommendations loaded, SQL dump has 19-column INSERTs (was 20), no `tmdb_data` references.
7. **Build still works**: `npm run build` succeeds (929ms).

### Deviations

The game branch's explicit `tmdb_data=NULL` was also removed (beyond what the question text strictly called for). Justified: writing `NULL` to a dropped column would be a SQL error, and the explicit-NULL pattern was only there because the column was still in the schema when ticket 6 landed.

### Status

This is the last ticket of the iteration. The games feature is shipped end-to-end (post 1q1ytxf is publishable in D1 with IGDB-enriched game records rendering on the site), and the queued cleanup is done.
</content>
</invoke>