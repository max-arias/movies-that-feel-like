---
id: 21
title: "Simplify d1:apply to use wrangler d1 migrations apply --local"
type: task
parent: 10
status: closed
assignee: max
blocked_by: [19]
---

## Question

Replace the current `d1:apply` npm script (which manually `DELETE`s from the four data tables and then `wrangler d1 execute --file` against each chunk in `data/working/load-d1/`) with a single `wrangler d1 migrations apply movies-that-feel-like --local --config apps/astro/wrangler.jsonc`. Wrangler's built-in migration tracking handles "which migrations have been applied" — it applies only the ones that haven't been applied yet, in the right order. The chunked SQL output and the `DELETE` are no longer needed. The `npm run seed` script (which is `db:migrate` + `db:load-local`) is updated: `db:load-local` becomes `wrangler d1 migrations apply --local` instead of running the load stage, and the load stage's role in seeding is moved to "produce the migration and let the user run seed later" or to a new `pipeline:emit-and-seed` convenience that calls `pipeline:load --emit-migration` followed by `db:migrate`. Verify: (1) `npm run seed` on a fresh local D1 creates the schema and applies the seed data migration in the right order; (2) re-running `npm run seed` is a no-op (wrangler skips applied migrations); (3) the prior `data/working/load-d1/` directory and its `DELETE FROM ...` calls are gone.

## Resolution

Closed. Folded into ticket 19's second pass — the user redirected to "always emit the migration, no flag, no sql-out", which removes the chunks and the `--sql-out` path as a side effect. Nothing of `d1:apply`'s work remains after that.

### What landed (in ticket 19's second pass)

- `load.py` no longer writes `data/working/load-d1.sql` or `data/working/load-d1/*.sql`. The chunked output is gone (it was the consumer of `_write_sql_dump`).
- The `_write_sql_dump` function is deleted.
- The `d1:apply` npm script is deleted from `package.json` (it walked the chunks that no longer exist).
- The `db:load-local` npm script is deleted; `seed` is the only "load + apply" path, and it's now `pipeline:load -- --reset && db:migrate` (i.e. `pipeline:load` + `wrangler d1 migrations apply --local`).
- The `pipeline:load:sql` script is deleted (no flag → no separate path).

### Verification

- `npm run seed` on the smoke dataset writes a fresh `0005_seed_<TS>.sql` and applies 0001-0005 to local D1 in one wrangler call (231 commands executed in the smoke run).
- Re-running `npm run seed` is `✅ No migrations to apply!` — wrangler's tracking handles it.
- The `data/working/load-d1.sql` and `data/working/load-d1/` paths no longer exist (no consumer, no producer).
- The `PRAGMA foreign_keys=OFF; DELETE FROM …` block that `d1:apply` ran is gone (and the `_apply_migrations` path in `load.py` already uses `PRAGMA foreign_keys=ON` because the schema is applied to a fresh local SQLite via `db.executescript`).

### What this doesn't do

- Doesn't apply the migration to remote D1. That's ticket 22 — `cf:deploy` still doesn't run `db:migrate -- --remote`. Untouched here, since the user's re-scope was specifically about the local-`seed` side.
- Doesn't auto-commit-and-push. Ticket 20.
- Doesn't add unique indexes to harden manual re-apply (fog entry on the map's `Not yet specified`).

### Files

- All changes in `apps/pipeline/src/pipeline/load.py`, `package.json`, and `apps/astro/src/pages/index.astro` (the empty-DB hint) are recorded in ticket 19's resolution. No separate changes in this ticket.
