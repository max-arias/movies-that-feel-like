-- 0191_seed_20260917T033107Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-09-17T03:31:35.380002+00:00
-- Run started: 2026-09-17T03:31:07.638909+00:00
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
SELECT p.id, 'gothic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'witchy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Victorian', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster romance', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf5pxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf6cyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf6cyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fatherly', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf6cyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s-2000s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf6cyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'irreverent', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'satirical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-comedy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf74e5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-drenched', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'European summer', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'luxurious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seductive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf78iq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feel-good', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rom-com', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wine-night', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '2000s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9hl2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'burnout', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9im2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'calm', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9im2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'slow-paced', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9im2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-stimulation', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9im2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'not tense', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wf9im2'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfaa5x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decadent', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cutesy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'colorful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sweet', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'baking', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfcd88'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'religious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'boarding-school', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sapphic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'repressed', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfet3p'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anime', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'space opera', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfghr6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgqdx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sublime', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgqdx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hellish', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgqdx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grandiose', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfgqdx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfheby'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfheby'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'foggy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfheby'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hazy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quietly haunted', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhgic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creeping tension', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfhy3v'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'removed', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfjww3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfjww3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'corporate', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dystopian', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'identity', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfk8bu'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkgu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkgu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oppressive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkgu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pre-2000', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkgu6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'working-class', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'British', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'council-estate', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sad', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkl89'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1980s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'new-wave', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightlife', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfkp09'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfmude'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'evil children', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfmude'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfmude'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological thriller', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfmude'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfoni3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfoni3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'obsessive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfoni3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult-classic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfoni3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neo-noir', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfq7vl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meditative', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ritualistic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disciplined', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfr3xp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bright', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sunny', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'terror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfs3d9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfsnqt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfsnqt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low-stakes', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfsnqt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action-comedy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfsnqt'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'body horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfvyfd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'long-take', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfwkf0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfx5wn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'argumentative', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfx5wn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solution-oriented', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfx5wn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfxyzx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folk horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfxyzx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'international', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfxyzx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfxyzx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfyekz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'puzzling', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfyekz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'island mystery', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfyekz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ensemble', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfyekz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfz57n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'action', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfz57n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'pulpy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfz57n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'chill', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stoner', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'humorous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wfzipw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage-fantasy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0l2u'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '90s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alienation', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grunge', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'restless', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg0mvw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'apocalyptic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beautiful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'deserved', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'silence', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg1tw0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sunny', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg2mmm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cheerful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg2mmm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'affectionate', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg2mmm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'morning', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg2mmm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sexy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monstrous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylized', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime-couple', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg320i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'asian-residential', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lived-in', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg34br'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'blue', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'winter', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'angsty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'empty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg51eb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'casual', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6fhw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6fhw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6fhw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'superpowers', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6fhw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploitation', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'revenge', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6jb4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'otherworldly', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'haunting', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic dread', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unknowable', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6tko'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reality-bending', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dread', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6vi9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reckless', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'streetwise', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desperate', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg6yu3'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'A24', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'backrooms', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wg8wkv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'neon', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'art-deco', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vegas', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futuristic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wga324'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgb5az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgb5az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'low mood', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgb5az'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'paranoid', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgbq16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgbq16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oppressive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgbq16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'weird', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgbq16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgbq16'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'prohibition-era', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outlaw-country', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gangster', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural-noir', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moonshine', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgcogs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glitchy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge30n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hallucinatory', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge30n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge30n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'analog-horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge30n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'monster-movie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stone', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wge6zb'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'celestial', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgegt6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'opulent', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'erotic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sinister', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf3uo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sweet', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summer', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romance', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'beach', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'giddy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgf61x'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'storybook', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wggp4j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgibic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgibic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quirky', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgibic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgibic'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgl98o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgl98o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '70s–80s Italian horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgl98o'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grimy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cursed', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found-footage', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgnj4l'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mountainy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'small-town', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uplifting', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'PNW', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'natural beauty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgom6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'raw', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1990s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Memphis rap', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underground', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found-footage', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark psychological horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgq2jn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgrbiv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'existential', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgrbiv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgrbiv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'time-compressed', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgrbiv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mundane', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'repetitive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surveillance', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'urban alienation', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'corporate dread', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgtzr4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lantern-lit', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'non-Christmas', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgu0ph'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'longing', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wgz1iz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lawless', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dangerous', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'irredeemable', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh5655'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dismissive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh6yl4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'confused', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh6yl4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snarky', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh6yl4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noir', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'autumnal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh80fx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disorienting', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hallucinatory', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anxiety-inducing', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9jpn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'experimental', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-70s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'technological-dread', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9tze'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9uox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unresolved', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9uox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reunion', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9uox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wh9uox'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Eden', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, '1970s', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'LSD', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'AI', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fractured reality', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whai5s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'listy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'aquatic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whe524'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'music-driven', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'animated', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'underrated', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wheyvv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poetic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sad', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thought-provoking', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whh1tx'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'searching', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whmt84'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'purpose-driven', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whmt84'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'reflective', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whmt84'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whpon9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escapist', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whpon9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whpon9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsw76'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recommendation-seeking', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsw76'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1whsw76'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wistful', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen-romance', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'longing', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi0ick'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi1uam'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'medieval', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi1uam'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi1uam'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'epic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi1uam'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unsettling', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psycho-horror', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'delusional', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'washed-up-star', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi4rnh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glittery', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro-futurist', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'AI-generated', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi73dp'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi7u7j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi7u7j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi7u7j'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'disorienting', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'altered-reality', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8gv7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'decadent', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark fantasy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi8i9b'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dusty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sun-scorched', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ancient', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desert', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9ahi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dusty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9upn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9upn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'laconic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9upn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'classic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wi9upn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dusty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiar8f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'southwestern', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiar8f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiar8f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thriller', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiar8f'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folkloric', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Slavic', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wiav37'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bacchanalian', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wic4os'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festive', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wic4os'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'indulgent', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wic4os'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'misty', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'woodsy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folkloric', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rural dread', 'extraction', '2026-09-17 03:31:35'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1widm44'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
