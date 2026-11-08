-- 0377_seed_20261108T061942Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-08T06:20:12.452714+00:00
-- Run started: 2026-11-08T06:19:42.109080+00:00
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
SELECT p.id, 'https://i.redd.it/q8e8qzdiv90i1.jpeg', 'https://preview.redd.it/q8e8qzdiv90i1.jpeg?width=960&auto=webp&s=10fe6c295bed0978d4ead8982d3095b5fa5f53dd', 960, 1499, 0, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqjlkj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qq6jo383z90i1.jpeg', 'https://preview.redd.it/qq6jo383z90i1.jpeg?width=960&auto=webp&s=50367cf2d14f56fe9eafe53d0c3803c2526e2c7f', 960, 1228, 0, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqk0za'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qeun4t992a0i1.jpeg', NULL, NULL, NULL, 0, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fntwcr992a0i1.jpeg', 'https://preview.redd.it/fntwcr992a0i1.jpeg?width=960&auto=webp&s=0a5bcede741fda21b1f2d28d61971572fbfc3783', 960, 685, 1, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nd54nq992a0i1.jpeg', 'https://preview.redd.it/nd54nq992a0i1.jpeg?width=960&auto=webp&s=2f8c5c34e1689238b2105b8d9c431c4f6accfd0d', 960, 960, 2, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fkl2oq992a0i1.jpeg', NULL, NULL, NULL, 3, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ypjx7r992a0i1.jpeg', 'https://preview.redd.it/ypjx7r992a0i1.jpeg?width=960&auto=webp&s=d1d3587d264e7bde8166867a617973391e78c6e1', 960, 684, 4, '2026-11-08 06:20:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xqkdqd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
