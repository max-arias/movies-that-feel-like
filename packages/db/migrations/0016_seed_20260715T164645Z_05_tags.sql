-- 0016_seed_20260715T164645Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-07-15T16:46:47.223663+00:00
-- Run started: 2026-07-15T16:46:45.317577+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every INSERT is INSERT OR IGNORE, keyed by the
-- table's natural unique constraint.  Wrangler's migration
-- tracking normally prevents re-apply; the OR IGNORE is
-- defense in depth for partial / interrupted re-runs.
--
-- Chunk: 05_tags (5/5)
-- Tables: vibe_tags.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (1161, 243, 'educational', 'extraction', '2026-07-15 16:46:47');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (1162, 243, 'biographical', 'extraction', '2026-07-15 16:46:47');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (1163, 243, 'historical', 'extraction', '2026-07-15 16:46:47');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (1164, 243, 'math-centric', 'extraction', '2026-07-15 16:46:47');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (1165, 243, 'science', 'extraction', '2026-07-15 16:46:47');
