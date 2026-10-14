-- 0218_seed_20261014T201521Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-14T20:15:51.395943+00:00
-- Run started: 2026-10-14T20:15:21.762178+00:00
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
SELECT p.id, 'disturbing', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zteo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mindfuck', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zteo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'extreme cinema', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zteo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x4zteo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1970s', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stoner', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'high school', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgia', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x54q11'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'therapeutic', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x54q11'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x54q11'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x54q11'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoia', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5767h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'techno-thriller', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5767h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5767h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surveillance', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5767h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x57y66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'trauma', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x57y66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x57y66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'character study', 'extraction', '2026-10-14 20:15:51'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x57y66'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
