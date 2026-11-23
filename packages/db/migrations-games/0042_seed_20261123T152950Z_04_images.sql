-- 0042_seed_20261123T152950Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-23T15:29:50.875913+00:00
-- Run started: 2026-11-23T15:29:50.059359+00:00
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
SELECT p.id, 'https://i.redd.it/9zi0eii0c23i1.png', 'https://preview.redd.it/9zi0eii0c23i1.png?width=960&auto=webp&s=55b0df971af2cbce103147066ac8fe138608c30f', 960, 540, 0, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2cfvs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ye4q8f4xz23i1.jpeg', 'https://cf.preview.redd.it/ye4q8f4xz23i1.jpeg?width=960&auto=webp&s=ddf01110595d1d4160f5fc6c3bab6e2d68d11b5d', 960, 540, 0, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/no8pke4xz23i1.jpeg', NULL, NULL, NULL, 1, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7lx91f4xz23i1.jpeg', NULL, NULL, NULL, 2, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ve8sle4xz23i1.jpeg', NULL, NULL, NULL, 3, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m8agte4xz23i1.jpeg', NULL, NULL, NULL, 4, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dogakpx3033i1.jpeg', 'https://cf.preview.redd.it/dogakpx3033i1.jpeg?width=960&auto=webp&s=f0f963d501c1a97aae50480c1a0f672aa9ed25b2', 960, 1706, 5, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f2uk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fj9eg1ii033i1.jpeg', NULL, NULL, NULL, 0, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/esf6n1ii033i1.jpeg', 'https://cf.preview.redd.it/esf6n1ii033i1.jpeg?width=960&auto=webp&s=a9ade503ba26fa77ba72531e031eda1206a03ca4', 960, 536, 1, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2f3n9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/3p_ESfUHyuzSIe0hQiW1qP6I54mrqmy3iOpOGRtz6lI.jpeg?format=pjpg&auto=webp&s=0372b1e2f52703a08f12743681f48067b684b2ae', NULL, NULL, NULL, 0, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2ipua'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lo44ly6di43i1.png', 'https://preview.redd.it/lo44ly6di43i1.png?width=960&auto=webp&s=e8c3a01d0717d06f5b6b9c8e0b7d76dbf6130988', 960, 540, 0, '2026-11-23 15:29:50', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2keyo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
