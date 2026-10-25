-- 0328_seed_20261025T045744Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T04:58:10.245118+00:00
-- Run started: 2026-10-25T04:57:44.646201+00:00
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
SELECT p.id, 'romance', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe9aix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropical', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe9aix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escapist', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe9aix'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xed17z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xed17z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xed17z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unwinding', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeexkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeexkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relaxing', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeexkj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mountains', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'remote', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'villages', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kingdoms', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scenic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xejgia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xejgia'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy horror', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quaint', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'socal', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family-drama', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surfing', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aesthetic', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xempmw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xempmw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-25 04:58:10'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xempmw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
