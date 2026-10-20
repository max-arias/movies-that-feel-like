-- 0288_seed_20261020T050116Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T05:01:58.678759+00:00
-- Run started: 2026-10-20T05:01:16.071146+00:00
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
SELECT p.id, 'melancholic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaaih7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaaih7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chill', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaaih7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaaih7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'confusing', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabca0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'baffling', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabca0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'perplexing', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabca0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabca0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space magic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vibrant', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabf66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster-hunting', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xabqxs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nihilistic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chaotic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unrelenting', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-20 05:01:58'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xac6b7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
