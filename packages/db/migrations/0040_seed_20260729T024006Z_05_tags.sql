-- 0040_seed_20260729T024006Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-07-29T02:40:10.858581+00:00
-- Run started: 2026-07-29T02:40:06.560790+00:00
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

INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2529, 542, 'surreal horror', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2530, 542, 'cosmic horror', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2531, 542, 'isolation', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2532, 543, 'surreal', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2533, 543, 'dreamlike', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2534, 543, 'psychological horror', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2535, 543, 'emotional', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2536, 543, 'mind-bending', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2537, 544, 'dark', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2538, 544, 'supernatural', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2539, 544, 'action', 'extraction', '2026-07-29 02:40:10');
INSERT OR IGNORE INTO "vibe_tags" ("id", "imported_vibe_post_id", "tag", "source", "created_at") VALUES (2540, 544, 'hellish', 'extraction', '2026-07-29 02:40:10');
