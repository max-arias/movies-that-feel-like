---
id: 23
title: "Chunk emitted seed migration into multiple NNNN_seed_*.sql files"
type: task
parent: 10
status: closed
assignee: max
blocked_by: [18]
---

## Question

The current `pipeline:load` emits a single `NNNN_seed_<TS>.sql` file containing every `INSERT OR IGNORE` for the data tables (`imported_vibe_posts`, `recommendations`, `recommendation_evidence`, `imported_post_images`, `vibe_tags`). Ticket 18's run produced a 3.0 MB / 10,420-statement file that applied cleanly to local D1, but production workers-side limits (Workers request body / D1 API upload ceiling, possibly the wrangler v4 migration-apply path) are brittle as the seed grows. Per the user's "we'll need to change the seed and chunk it, we had issues when it exceeds the worker limit" direction: split the data migration into **multiple sequential seed migrations** so each is small enough to be applied in one worker request.

Define the chunking policy (e.g. one migration per data table, or a fixed row count per migration), update `apps/pipeline/src/pipeline/load.py::_write_data_migration` to emit N files in lexical order under `packages/db/migrations/`, ensure the parent-before-child FK ordering is preserved across chunks (`imported_vibe_posts` and `recommendations` first, then `recommendation_evidence` and `imported_post_images` and `vibe_tags`), and ensure `wrangler d1 migrations apply` picks them up in sequence via filename ordering. Verify by emitting a fresh chunked set from the 242-post artifacts and applying them against a wiped local D1 with the same row counts as ticket 18 (242/1147/2621/5251/1160).

Acceptance: a single `pipeline:load --reset` run produces 2+ seed migrations whose concatenated `INSERT` counts match the single-file output (no rows dropped or duplicated), and `wrangler d1 migrations apply --local` applies them all in order with no FK or `INSERT OR IGNORE` regressions. The user's "dev commits and pushes" flow (ticket 20 abandoned; manual flow per the map's destination) is unchanged — they just `git add`/`git commit`/`git push` the now-multi-file set.

Out of scope: re-running the full pipeline end-to-end (the 242-post artifacts from ticket 18 are reused); re-architecting the loader or its merge logic; auto-push; changes to `pipeline:ingest` or `seed` npm scripts.
