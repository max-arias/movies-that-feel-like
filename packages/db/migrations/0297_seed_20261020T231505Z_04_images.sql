-- 0297_seed_20261020T231505Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T23:15:30.135023+00:00
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
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/iyIr2DQugrn9oBrAQnsCrH1wcVKHsWfipf2avh6N6Xg.jpeg?auto=webp&s=9c4739314f7bf41f9d3bd66090b9ec7c0fef2c1d', NULL, NULL, NULL, 0, '2026-10-20 23:15:30', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rwss'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/upl6h642iewh1.jpg', NULL, NULL, NULL, 0, '2026-10-20 23:15:30', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4tpal2b2iewh1.jpg', NULL, NULL, NULL, 1, '2026-10-20 23:15:30', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zk9b23h2iewh1.jpg', NULL, NULL, NULL, 2, '2026-10-20 23:15:30', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9t7vw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jc541fgtc5wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-20 23:15:30', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9wul8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
