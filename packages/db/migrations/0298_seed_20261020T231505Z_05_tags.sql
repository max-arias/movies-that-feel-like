-- 0298_seed_20261020T231505Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T23:15:30.135190+00:00
-- Run started: 2026-10-20T23:15:05.889912+00:00
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
SELECT p.id, 'toxic love', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rwss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological horror', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rwss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'manipulation', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rwss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark romance', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rwss'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ethereal', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'enchanted forest', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fairy tale', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical nature', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'brutalist', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9uols'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'industrial', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9uols'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9uols'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'matrix-esque', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9uols'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9uols'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romance', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wtc3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropes', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wtc3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curiosity', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wtc3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinephile', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wul8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'canon', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wul8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'debate', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wul8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rankings', 'extraction', '2026-10-20 23:15:30'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wul8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
