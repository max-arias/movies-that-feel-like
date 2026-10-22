-- 0308_seed_20261022T135432Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-22T13:55:04.851425+00:00
-- Run started: 2026-10-22T13:54:32.293740+00:00
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
SELECT p.id, 'cozy', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0tqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy-day', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0tqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0tqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mellow', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0tqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-paced', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0tqd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-fairytale', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ethereal', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escherian', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'labyrinthine', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic-horror', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc1942'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc1942'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'philosophical', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc1942'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fall', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc3em3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumn', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc3em3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc3em3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'niche', 'extraction', '2026-10-22 13:55:04'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc3em3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
