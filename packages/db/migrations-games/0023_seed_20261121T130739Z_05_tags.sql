-- 0023_seed_20261121T130739Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T13:07:40.431342+00:00
-- Run started: 2026-11-21T13:07:39.857017+00:00
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
SELECT p.id, 'power fantasy', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'one-man army', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'militaristic', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heroic', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'overwhelming', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurist', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alien invasion', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold war', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulp sci-fi', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gg9e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'early-2000s', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gg9e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gg9e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurist', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gg9e'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nihilistic', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-game emptiness', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'abandoned', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ruined', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unnerving', 'extraction', '2026-11-21 13:07:40'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
