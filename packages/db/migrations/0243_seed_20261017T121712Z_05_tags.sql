-- 0243_seed_20261017T121712Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T12:17:44.316891+00:00
-- Run started: 2026-10-17T12:17:12.269707+00:00
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
SELECT p.id, 'nocturnal', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban noir', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slick', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x69o6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woodland', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic animation', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anthropomorphic', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x71kh7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumn', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'youth', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x72ict'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animation', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x732m6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x732m6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual style', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x732m6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survey', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x732m6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'road-trip', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage cars', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'driving', 'extraction', '2026-10-17 12:17:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x734pn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
