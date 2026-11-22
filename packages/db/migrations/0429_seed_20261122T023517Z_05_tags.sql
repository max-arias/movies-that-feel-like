-- 0429_seed_20261122T023517Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T02:35:52.754372+00:00
-- Run started: 2026-11-22T02:35:17.624969+00:00
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
SELECT p.id, 'playful', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwh0qj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'promotional', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwh0qj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-trivia', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwh0qj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'musical', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnx0m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'character-driven', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnx0m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'world-building', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnx0m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnzu5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visceral', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnzu5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnzu5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disturbing', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnzu5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1mv1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1mv1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1mv1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1mv1m'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-fantasy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'matter-of-fact', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncof'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'opulent', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aristocratic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'orchestral', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period-drama', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ugz5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ugz5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-stakes', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ugz5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'toxic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1vb1i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1vb1i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1vb1i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vivid', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantastical', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x2li'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x2li'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x2li'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x5jk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x5jk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon-noir', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1yplg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'futuristic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1yplg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1yplg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1yplg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witty', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chemistry', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y206fv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y206fv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y206fv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'violent', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y206fv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'forgetful', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22crt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'convenient', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22crt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'techy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22crt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relieved', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22crt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grindhouse', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'violent', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y24ldx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y24ldx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreak', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y24ldx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y24ldx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutalist', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'architectural', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grim', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventurous', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29tdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29tdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comedy', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29tdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'light', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29tdd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeless', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colorful', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2acw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artificial', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2acw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spectacle', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2acw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unreal', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2acw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2amit'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2amit'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aimless', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2amit'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-22 02:35:52'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2amit'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
