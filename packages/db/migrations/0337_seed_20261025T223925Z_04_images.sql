-- 0337_seed_20261025T223925Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T22:40:03.524655+00:00
-- Run started: 2026-10-25T22:39:25.582216+00:00
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
SELECT p.id, 'https://i.redd.it/xctwbm33xuwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 22:40:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbtuww'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wnsxnjmxmtwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 22:40:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbufk3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ojl8chs4svwh1.png', 'https://preview.redd.it/ojl8chs4svwh1.png?width=960&auto=webp&s=4bc57f6d61f83622b4fb923da57cd42272bfad50', 960, 2240, 0, '2026-10-25 22:40:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbyl94'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/flvjybstyvwh1.jpeg', 'https://preview.redd.it/flvjybstyvwh1.jpeg?width=960&auto=webp&s=b41c54b5e539ba669ac28374165be1a84db79b8e', 960, 1144, 0, '2026-10-25 22:40:03', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xbzm4u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
