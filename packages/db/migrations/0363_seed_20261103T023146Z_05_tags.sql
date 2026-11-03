-- 0363_seed_20261103T023146Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-03T02:32:44.905213+00:00
-- Run started: 2026-11-03T02:31:46.403662+00:00
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
SELECT p.id, 'recommendation-request', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm6xkc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm6xkc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maternal', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wholesome', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xm9iox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chick-flick', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lifestyle', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rom-com', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xma6ab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monument-valley', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arid', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southwestern', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scenic', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmbwio'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'resourceful', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'improvisation', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tactical', 'extraction', '2026-11-03 02:32:44'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xmc3dz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
