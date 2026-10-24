-- 0318_seed_20261024T190012Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-10-24T19:00:47.976587+00:00
-- Run started: 2026-10-24T19:00:12.911631+00:00
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
SELECT p.id, 'thriller', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd5ixc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'suspenseful', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd5ixc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd5ixc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gripping', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd5ixc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartbreaking', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8bo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tragic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8bo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tearjerker', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8bo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'historical drama', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8bo8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'recap', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8exc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'summary', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8exc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'compilation', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8exc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surrealistic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'uncanny', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mind-bending', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd8ldh'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen drama', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd9f9w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd9f9w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'angst', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd9f9w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'college drama', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd9f9w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdafkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdafkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'jazz', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdafkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'noir', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdafkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'outsider', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdafkz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolated', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdbyjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'lonely', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdbyjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'remote', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdbyjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdbyjr'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'siren', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seductive', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcomc'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'transcendental', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'oneiric', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sensory', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'denpa', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'iyashikei', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcwcs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gloomy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeless', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gore', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdcxbl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seductive', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'supernatural', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'femme-fatale', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dark-romance', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdd035'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdeihd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdeihd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'poignant', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdeihd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdeihd'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'arcane', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystical', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'magic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wizardry', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'scholarly', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdg4z0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'midcentury', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vintage', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdkdob'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl0a9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl0a9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl0a9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ruins', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl0a9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-apocalyptic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl6xw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'desolate', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl6xw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl6xw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mysterious', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdl6xw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'festive', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdmgs7'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'campy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdozra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdozra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'halloween', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdozra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fun', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdozra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'spooky', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdozra'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'introverted', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'burnout', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'escapist', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'solitary', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'artistic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdpezj'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'evocative', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moody', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdq0au'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'masterpiece', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdru5h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdru5h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'perfection', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdru5h'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comforting', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds779'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds779'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'familiar', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds779'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds8z1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds8z1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'heartwarming', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds8z1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'comfort', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xds8z1'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visually-striking', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'imaginative', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdsh6w'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdtvks'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-10-24 19:00:47'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdtvks'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
