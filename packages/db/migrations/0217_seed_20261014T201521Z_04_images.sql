-- 0217_seed_20261014T201521Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-14T20:15:51.395622+00:00
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
-- Chunk: 04_images (4/5)
-- Tables: imported_post_images.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l8t6j7z5q9vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-14 20:15:51', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x52pl8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/itg19ic6x1vh1.jpeg', NULL, NULL, NULL, 0, '2026-10-14 20:15:51', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x54q11'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/reekrvckjavh1.jpeg', 'https://preview.redd.it/reekrvckjavh1.jpeg?width=960&crop=smart&auto=webp&s=e86121d0dc251fe6bde704293bfd1ae0903e4a79', 960, 1440, 0, '2026-10-14 20:15:51', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5767h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oboz7cfxoavh1.jpeg', NULL, NULL, NULL, 0, '2026-10-14 20:15:51', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x57y66'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
