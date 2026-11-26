-- 0464_seed_20261126T232955Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T23:30:20.872156+00:00
-- Run started: 2026-11-26T23:29:55.940308+00:00
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
SELECT p.id, 'uncanny', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xurika'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xurika'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festival', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xurika'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xurika'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xurika'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-suspense', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xut5d7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'listy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xutna4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skeptical', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xutna4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meta', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xutna4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'frazzled', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'messy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'funny', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'British', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuuytz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv6vn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv6vn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv6vn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv6vn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv7dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cartoonish', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv7dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meta', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv7dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theatrical', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuv7dh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hot', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'humid', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oppressive', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sticky', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xuxuwi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-burn', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ambient', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36c7t'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36l4z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noir', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36l4z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36l4z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'offbeat', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y36l4z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y37dm9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y37dm9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'earnest', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y37dm9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y37dm9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38qfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38qfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventurous', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38qfz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38y3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38y3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mythic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38y3g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y38ycw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3a8fk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ba56'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tech', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ba56'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ba56'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3c9ai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'realistic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3c9ai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-bleached', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3c9ai'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3cd6z'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scholarly', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'adventurous', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3co6y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3fjiz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3fjiz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3fjiz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cerebral', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ga2v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time-bending', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ga2v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3ga2v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'regional', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmwo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmwo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'place-specific', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmwo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3mmwo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stressful', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anxious', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'relentless', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncomfortable', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nd31'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3nyvg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pyqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-scale', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pyqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unanswered', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3pyqc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disorienting', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'avant-garde', 'extraction', '2026-11-26 23:30:20'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qlj9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
