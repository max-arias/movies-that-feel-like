-- 0353_seed_20261031T201954Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-31T20:20:27.506741+00:00
-- Run started: 2026-10-31T20:19:54.428320+00:00
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
SELECT p.id, 'dystopian', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'prediction', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mediterranean', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'european', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anthology', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eclectic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bizarre', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recommendations', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjgbrg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'minimal', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjgbrg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'request', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjhub1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movies', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjhub1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tech-noir', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dieselpunk', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alternate history', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi horror', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulpy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slapstick', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurdist', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'goofy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recent', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjknbw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjknbw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grungy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjknbw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjknbw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjknbw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spiritual', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'transcendent', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trippy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'flow-state', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spec ops', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magical', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmalj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventure', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmalj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exotic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmalj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmfik'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indecisive', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmfik'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grungy', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'b-movie', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'analytical', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjnwb6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjnwb6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjnwb6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spiritual', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'flow state', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'LGBTQ+', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjsjco'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjsjco'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sincere', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjsjco'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjsjco'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark superpowers', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found footage', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'destructive', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'honest', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjt3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recommendations', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjt3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curated', 'extraction', '2026-10-31 20:20:27'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjt3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
