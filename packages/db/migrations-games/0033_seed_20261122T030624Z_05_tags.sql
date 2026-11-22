-- 0033_seed_20261122T030624Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T03:06:26.747102+00:00
-- Run started: 2026-11-22T03:06:24.805173+00:00
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
SELECT p.id, 'revenge', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wofs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wofs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wofs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moral cost', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wofs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark magic', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'power fantasy', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suffering', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arcade racing', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast-paced', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'no gacha', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wild tracks', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'collection', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hub', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rescue', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster wrestling', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y276b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y276b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gacha', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y276b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y276b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'age of sail', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y290h6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y290h6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grounded', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y290h6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y290h6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tank', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'singleplayer', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'simulation', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wizard', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'buildcrafting', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spells', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2afn3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hard-won', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2afn3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2afn3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hellish', 'extraction', '2026-11-22 03:06:26'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2afn3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
