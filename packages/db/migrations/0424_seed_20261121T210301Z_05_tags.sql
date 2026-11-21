-- 0424_seed_20261121T210301Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T21:03:36.895563+00:00
-- Run started: 2026-11-21T21:03:01.756078+00:00
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
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwo6un'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'emotional', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwo6un'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'earnest', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwo6un'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'questioning', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovaq'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovsi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovsi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'questioning', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovsi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gentle', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'unhurried', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cozy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwqtno'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rainy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwqtno'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwqtno'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'anticipation', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrjs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hype', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrjs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'upcoming', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrjs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curiosity', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrjs9'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwruhv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nature', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwruhv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'meadow', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwruhv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tall grass', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwruhv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwruhv'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cinematic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrxjg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'landscape', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrxjg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'period', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrxjg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'quiet intensity', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrxjg'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'secluded', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrynw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'snowy forest', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrynw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cold blue-grey', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrynw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'interior warmth', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrynw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'isolation', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrynw'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwsnr5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'claustrophobic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwsnr5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'moral dilemma', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwsnr5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maze', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwsnr5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'survival game', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwsnr5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cosmic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'liminal', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'creepy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'star-crossed', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'yearning', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ideological-tension', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0vlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'conversational', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0vlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'movie-inquiry', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0vlo'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'folkloric', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ritualistic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'atmospheric', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamlike', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmarish', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'friendship', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gritty', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'Parisian', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'dreamy', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'stylish', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'feminine', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rbax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wholesome', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rbax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'playful', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rbax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rbax'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'found-footage', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'alien-invasion', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'military', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tense', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'biomechanical', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'grotesque', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cyberpunk', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'tropical', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'contemplative', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'western', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fever-dream', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'hopeful', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'coming-of-age', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bittersweet', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'maritime', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0ww93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'eerie', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0ww93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nautical', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0ww93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mod', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'glamorous', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-11-21 21:03:36'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
