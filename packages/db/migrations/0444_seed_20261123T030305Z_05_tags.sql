-- 0444_seed_20261123T030305Z_05_tags.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T03:03:39.739437+00:00
-- Run started: 2026-11-23T03:03:05.318691+00:00
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
SELECT p.id, 'date-night', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv0bvm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'thrilling', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv0bvm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fast-paced', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv0bvm'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'curious', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv1j2y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'skeptical', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv1j2y'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2b9n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2b9n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2b9n'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'melancholic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'illusory', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychological', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2bd8'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'family', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2x93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'warm', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2x93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv2x93'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'surreal', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2bh3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'psychedelic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2bh3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cartoonish', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2bh3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'cult', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2bh3s'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'vague', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2by78'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'open-ended', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2by78'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nostalgic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f7u0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'kid-friendly', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f7u0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'teen', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f7u0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'retro', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f7u0'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'intense', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f9n6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'seeking-similar', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f9n6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'post-watch', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f9n6'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'nightmare', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mansion', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'clownish', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2gum4'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'immersive', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'naval', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'war', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'visceral', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2y3ru'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'wintry', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'bleak', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'rust-belt', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'crime', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2yyab'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'gothic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31gmz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'occult', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31gmz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'mystery', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31gmz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'academic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31gmz'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'sci-fi', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31lyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'exploration', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31lyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'ensemble', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y31lyl'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'romantic', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32tw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'fantasy', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32tw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
INSERT INTO "vibe_tags" ("imported_vibe_post_id", "tag", "source", "created_at")
SELECT p.id, 'whimsical', 'extraction', '2026-11-23 03:03:39'
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y32tw5'
ON CONFLICT(imported_vibe_post_id, tag) DO UPDATE SET "source"=excluded."source";
