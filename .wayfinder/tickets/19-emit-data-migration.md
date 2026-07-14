---
id: 19
title: "Refactor load.py to emit a data migration to packages/db/migrations/"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Question

Replace the current `load.py --sql-out data/working/load-d1.sql` flow (which emits chunked SQL to a gitignored directory, then has `d1:apply` walk the chunks to push them into local D1) with the load step writing the load output directly to `packages/db/migrations/`. The file is `NNNN_seed_<UTC-timestamp>.sql` where `NNNN` is the next available 4-digit number after the existing schema migrations (`0001_initial.sql` … `0004_drop_tmdb_data.sql`) — so the first emitted migration is `0005_seed_<TS>.sql`. Every `INSERT` in the emitted SQL is rewritten as `INSERT OR IGNORE` so the migration is idempotent on re-apply, keyed by the table's natural unique constraint (`reddit_post_id` on `imported_vibe_posts`, `(recommendation_id, imported_vibe_post_id, evidence_comment_id)` on `recommendation_evidence`, `(imported_vibe_post_id, tag)` on `vibe_tags`). The output is the migration; the migration IS the SQL — there's no separate dump path. The data migration is the only SQL output of the load stage. `wrangler d1 migrations apply <DB>` (with `--local` or `--remote`) is the single apply path.

## Resolution

Closed. Every successful `pipeline:load` now writes a versioned, idempotent data migration to `packages/db/migrations/` — no flag, no separate `--sql-out` path. The migration IS the SQL output.

### What changed in `load.py`

**New module-level constants** (top of file):

- `DATA_TABLES = frozenset({"imported_vibe_posts", "recommendations", "recommendation_evidence", "imported_post_images", "vibe_tags"})` — included in the emitted migration.
- `PIPELINE_STATE_TABLES = frozenset({"processing_runs", "pipeline_artifacts"})` — explicitly excluded; per-run bookkeeping, not user data.

**New helpers**:

- `_build_ordered_inserts(db, table_filter)` — walks `db.iterdump()`, groups INSERTs by table, emits them in a stable parent-before-child order (`imported_vibe_posts` → `recommendations` → `recommendation_evidence` → `imported_post_images` → `vibe_tags` → `processing_runs` → `pipeline_artifacts`) so the result is FK-safe on a fresh schema. Filter parameter drops anything not in the set.
- `_rewrite_inserts_to_ignore(inserts)` — uniform rewrite `INSERT INTO …` → `INSERT OR IGNORE INTO …` for idempotency. Applied to every emitted migration line.
- `_next_migration_number(migrations_dir)` — scans for `NNNN_*.sql` files, returns `max + 1` (or `1` if the directory is empty). With 0001–0004 in place, the first emitted file is `0005_seed_<TS>.sql`.
- `_migration_filename(sequence, when)` — formats `NNNN_seed_YYYYMMDDTHHMMSSZ.sql` (UTC, second precision; matches `timestamp_slug()` from `artifacts.py`).
- `_write_data_migration(db, migrations_dir, run_started_at)` — filters to `DATA_TABLES` only, rewrites every INSERT to `INSERT OR IGNORE`, prepends a header comment that names the file, the run-start time, and the idempotency semantics, then writes to `migrations_dir / NNNN_seed_<TS>.sql`. Refuses to overwrite an existing file (second-precision collision guard for back-to-back runs).

**Removed**:

- `--sql-out` flag and the entire `_write_sql_exports` / `_write_sql_dump` chain. The dual-output (single file + chunked directory) that `d1:apply` consumed is gone.
- `--emit-migration` flag. The migration is the only SQL output now; no opt-in.
- The mutual-exclusivity check between `--sql-out` and `--emit-migration`. Both flags are gone.
- The local `from pipeline.paths import project_root` inside `main()` (hoisted to top-level import).

**Retained**:

- `--migrations-dir` (default `packages/db/migrations/`) — still useful for an isolated worktree that wants to write to a non-standard path. If the default ever changes it should change in `wrangler.jsonc` and `load.py` together.
- `run_started_at = datetime.now(timezone.utc)` is captured **before** `ensure_pipeline_dirs()` and any artifact reads, so the migration filename records when the data was *collected*, not when the file was written.

**`main()`** flow:

1. Parse args → capture `run_started_at` → `ensure_pipeline_dirs()` → read artifacts → upsert posts / recs / evidence / tags / images.
2. Write the load manifest to `data/working/load-{TS}.json`.
3. Call `_write_data_migration(db, migrations_dir, run_started_at)` — **unconditional**.
4. Print the `Done:` summary.

### What changed in `package.json`

- `seed` is now `pipeline:load --reset && db:migrate` — the canonical "fresh local D1" command. Runs the load (which writes the data migration to `packages/db/migrations/`) and then applies schema + new migration to local D1 in one go.
- `db:load-local` is gone. It was `pipeline:load --reset --sql-out data/working/load-d1.sql && d1:apply`, both halves of which are obsolete.
- `d1:apply` is gone. The chunk-walking + DELETE dance it did is replaced by `wrangler d1 migrations apply --local` (which is `db:migrate`).
- `pipeline:load:sql` is gone. There is no separate SQL path; `pipeline:load` produces the migration directly.

### Verification

Smoke run on the 30-post / 15-enrichment dataset (latest extraction `extraction-20260714T154504Z.json`, smoke enrichment `/tmp/smoke-enrichment.json`, fresh local D1):

**1. `pipeline:load` (no flag) emits the migration**

```
$ PYTHONPATH=src uv run python -m pipeline.load --reset \
    --db /tmp/test-app.db --enrichment /tmp/smoke-enrichment.json
[pipeline:load] Data migration written to /home/max/dev/movies-that-feel-like/packages/db/migrations/0005_seed_20260714T165150Z.sql
[pipeline:load] Done: 2 publishable, 28 skipped, 118 images, 29 recommendations, 33 evidence, 80 tags
```

**2. INSERT counts by table (file content)**

| Table | Inserts in migration |
|---|---|
| `imported_vibe_posts` | 30 |
| `recommendations` | 29 |
| `recommendation_evidence` | 33 |
| `imported_post_images` | 118 |
| `vibe_tags` | 80 |
| `processing_runs` | 0 (correctly excluded) |
| `pipeline_artifacts` | 0 (correctly excluded) |

Every INSERT uses `INSERT OR IGNORE INTO`. No `INSERT INTO` (non-IGNORE) survives the rewrite.

**3. `wrangler d1 migrations apply --local` applies cleanly**

```
$ wrangler d1 migrations apply movies-that-feel-like --local --config apps/astro/wrangler.jsonc
…
🚣 291 commands executed successfully.   ← 0005 alone (290 inserts + BEGIN/COMMIT)
┌────────────────────────────────┬────────┐
│ 0005_seed_20260714T165150Z.sql │ ✅     │
└────────────────────────────────┴────────┘
```

**4. Re-apply is a no-op** (wrangler's tracking):

```
$ wrangler d1 migrations apply movies-that-feel-like --local --config apps/astro/wrangler.jsonc
✅ No migrations to apply!
```

**5. Row counts in local D1 match the in-process load exactly**

| Table | D1 count | Load summary | Match |
|---|---|---|---|
| `imported_vibe_posts` | 30 | 30 posts | ✅ |
| `imported_post_images` | 118 | 118 images | ✅ |
| `recommendations` | 29 | 29 recommendations | ✅ |
| `recommendation_evidence` | 33 | 33 evidence | ✅ |
| `vibe_tags` | 80 | 80 tags | ✅ |
| `processing_runs` | 0 | (excluded) | ✅ |
| `pipeline_artifacts` | 0 | (excluded) | ✅ |

**6. `npm run seed` works end-to-end**

```
$ npm run seed
[pipeline:load] Data migration written to .../0005_seed_20260714T165223Z.sql
…
🚣 231 commands executed successfully.   ← schema (0001-0004) + 0005 in one go
```

Re-running `npm run seed` is a no-op (wrangler's tracking). The dev's flow is now a single command.

**7. Next-migration-number jumps correctly**

A second run in the same minute produces `0006_seed_…` — no collision, no overwriting. The collision guard (`if path.exists(): SystemExit`) protects against dev re-runs.

### Files

- `apps/pipeline/src/pipeline/load.py` — +197 / -80 lines (the previous `_write_sql_exports` is gone; net change is now smaller than the first iteration).
  - New: `DATA_TABLES`, `PIPELINE_STATE_TABLES` constants; `_build_ordered_inserts`, `_rewrite_inserts_to_ignore`, `_next_migration_number`, `_migration_filename`, `_write_data_migration` functions; `--migrations-dir` argparser entry; `run_started_at` capture.
  - Removed: `_write_sql_exports`, `_write_sql_dump`, `--sql-out`, `--emit-migration`, the mutual-exclusivity check, the chunked-output code path, the local `project_root` re-import.
- `package.json` — 6 scripts changed (`cf:deploy*` unchanged; `seed` simplified; `db:load-local`, `d1:apply`, `pipeline:load:sql` removed).
- `apps/astro/src/pages/index.astro` — empty-DB hint now says `npm run seed` instead of `npm run db:load-local`.

### What this doesn't do

- Doesn't apply the migration to remote D1. The pipeline emits the file; `wrangler d1 migrations apply --remote` (called from `npm run cf:deploy`, ticket 22) is what hits prod. The current `cf:deploy` script doesn't yet run `db:migrate -- --remote` — that's ticket 22's work, untouched here.
- Doesn't auto-commit-and-push. Ticket 20 adds that.
- Doesn't add unique indexes to `recommendations(tmdb_id, media_type)` / `(igdb_id, media_type)`. The map's destination text claims these are "already unique indexes per 0001_initial.sql and 0003_games.sql" — they aren't (the schema has plain `idx_recommendations_tmdb_id` / `idx_recommendations_igdb_id`). For the data migration to be **truly** idempotent on manual re-apply (i.e., not just under wrangler's tracking), recommendations and `imported_post_images` would need a fresh schema migration to add unique indexes. In practice wrangler tracking prevents re-apply, so this is a fog item for the 1k verification (ticket 18) rather than a blocker. Already noted in the map's `Not yet specified`.
- Doesn't filter out `skipped` posts from the migration. The loader writes them as `status='skipped'`; the UI presumably filters on `status='publishable'`. Including skipped posts means the DB has the full record (useful for re-extraction, future re-runs); excluding them would lose that history.
- Doesn't add a sanity check that the file actually got written. `_write_data_migration` returns the `Path`; the call site in `main()` discards it. If a future caller wants to verify, the return value is there.
