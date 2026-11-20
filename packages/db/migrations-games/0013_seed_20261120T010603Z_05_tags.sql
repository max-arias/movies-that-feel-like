-- 0013_seed_20261120T010603Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T01:06:03.895478+00:00
-- Run started: 2026-11-20T01:06:03.495879+00:00
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
SELECT p.id, 'surreal', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvi3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hallucinatory', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvi3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recommendation list', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvi3o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast combat', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'armor', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellion', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzvx16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwqha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwqha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwqha'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mature', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzyctg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'explicit', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzyctg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'PC', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzyctg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'secondhand nostalgia', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzpbd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sniper', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00uk5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical shooter', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00uk5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'one-shot kills', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00uk5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y05us7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'troop upgrades', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y05us7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'base building', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y05us7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'self-promotion', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07591'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underdog dev', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07591'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'plane crash physics', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y07591'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y08ymh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y08ymh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hardcore', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y08ymh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'offline', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y08ymh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'homesteading', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y08ymh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'out-of-depth', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ordinary protagonist', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-20 01:06:03'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0molw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
