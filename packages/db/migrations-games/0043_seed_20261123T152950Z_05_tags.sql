-- 0043_seed_20261123T152950Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T15:29:50.876160+00:00
-- Run started: 2026-11-23T15:29:50.059359+00:00
-- Source: data/working/load manifest from this run.
--
-- Idempotent: every row is an upsert keyed by the table's
-- natural unique constraint, and every child resolves its
-- parents through that same key.  Row ids are never copied —
-- the destination allocates them — so re-applying refreshes the
-- row it belongs to instead of colliding with an id D1 already
-- owns.  Wrangler's migration tracking normally prevents
-- re-apply; the upsert is defense in depth for partial /
-- interrupted re-runs, and a conflict target the destination
-- cannot satisfy aborts the apply instead of dropping rows.
--
-- Chunk: 05_tags (5/5)
-- Tables: vibe_tags.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2cfvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space fleets', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2cfvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'carriers', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2cfvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'strategy', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2cfvs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'robot dinosaurs', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open world', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersion', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'detail', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2ipua'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'somber', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2ipua'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2ipua'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grief', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2ipua'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fog of war', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2keyo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'daily puzzle', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2keyo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maze', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2keyo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimal', 'extraction', '2026-11-23 15:29:50'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2keyo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
