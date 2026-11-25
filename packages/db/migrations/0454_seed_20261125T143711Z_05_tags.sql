-- 0454_seed_20261125T143711Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-25T14:37:42.988812+00:00
-- Run started: 2026-11-25T14:37:11.486674+00:00
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
SELECT p.id, 'optimistic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wondrous', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark academia', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chilly', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glittery', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'theatrical', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y44aah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unclear', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y44aah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y44aah'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'celebrity', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'speculative', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Hollywood', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46dao'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'working-class', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46dao'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46dao'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rebellious', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46dao'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kaiju', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster-mash', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enthusiastic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'genre-nerdy', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wishful', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mischievous', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introspective', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4dibb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4dibb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4dibb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4dibb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-25 14:37:42'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
