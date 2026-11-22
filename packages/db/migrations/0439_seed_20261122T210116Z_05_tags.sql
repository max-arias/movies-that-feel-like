-- 0439_seed_20261122T210116Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T21:01:41.349286+00:00
-- Run started: 2026-11-22T21:01:16.994010+00:00
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
SELECT p.id, 'heartfelt', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mountain', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1970s', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bohemian', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv6cbu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv6cbu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slice-of-life', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv6cbu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv6cbu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv74yo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weekend', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv74yo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-seeking', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv74yo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crimson', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark humor', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s coffeehouse', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indie', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visual', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xve3h4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xve3h4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sparse', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xve3h4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contrarian', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvfl0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disappointed', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvfl0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anti-ChatGPT', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvfl0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'edgy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvfl0r'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period drama', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'film nerd', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'awe', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oceanic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xviczd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nocturnal', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xviczd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xviczd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sad-girl', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tender', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvk6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvk6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'metaphysical', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvk6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic ambiguity', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvm811'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'secretive', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvm811'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvm811'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dangerous', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'late-night', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs2g4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'girlhood', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs2g4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs2g4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'charming', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs2g4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hazy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stoner', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tired', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'absurd', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drifting', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deadpan', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sad', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsz7f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'devastating', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsz7f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsz7f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disappointed', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsz7f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt70w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt70w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt70w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt8s1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt8s1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt8s1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt8s1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'drama', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aquatic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-11-22 21:01:41'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
