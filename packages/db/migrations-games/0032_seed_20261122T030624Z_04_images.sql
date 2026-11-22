-- 0032_seed_20261122T030624Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T03:06:26.746793+00:00
-- Run started: 2026-11-22T03:06:24.805173+00:00
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
SELECT p.id, 'https://i.redd.it/ofltzjzssy2i1.png', 'https://preview.redd.it/ofltzjzssy2i1.png?width=960&auto=webp&s=2d440f42a3e907e7233e58ba0712fddc164e6d9b', 960, 540, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wofs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vc4f2v20cz2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wsrggy4hdz2i1.png', NULL, NULL, NULL, 1, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ytatux4hdz2i1.png', NULL, NULL, NULL, 2, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1z54w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1zikp26q503i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yv1q436q503i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/almmh36q503i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22rkz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1kzn20m7s03i1.jpeg', 'https://preview.redd.it/1kzn20m7s03i1.jpeg?width=960&auto=webp&s=b0cb7e2146cf8aa20f506e409a01d77a9a677a5f', 960, 540, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/igvp70m7s03i1.jpeg', 'https://preview.redd.it/igvp70m7s03i1.jpeg?width=960&auto=webp&s=cdf942c485cecb62dc58e688f4e9dfe0289a3a07', 960, 540, 1, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bjjj21m7s03i1.jpeg', 'https://preview.redd.it/bjjj21m7s03i1.jpeg?width=960&auto=webp&s=f03d46274fd9bd218d680468344fdf3912a9331e', 960, 705, 2, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y25qnn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yw9yl7m3m13i1.png', NULL, NULL, NULL, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qj1isb54m13i1.png', NULL, NULL, NULL, 1, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xohig3o8m13i1.png', NULL, NULL, NULL, 2, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29hw8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n0ll8hxcn13i1.jpeg', 'https://preview.redd.it/n0ll8hxcn13i1.jpeg?width=960&auto=webp&s=ce84b030e8f4cc84d7c52d11bf1fc9177af904be', 960, 540, 0, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sect7hxcn13i1.jpeg', 'https://preview.redd.it/sect7hxcn13i1.jpeg?width=960&auto=webp&s=242be0dee409aadd0f331c924b97fdc19f1320e6', 960, 540, 1, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5dr8xgxcn13i1.jpeg', 'https://preview.redd.it/5dr8xgxcn13i1.jpeg?width=960&auto=webp&s=56eb4a96d2ffdfd1c6dcef8cf9b808bd6ef0f3b3', 960, 480, 2, '2026-11-22 03:06:26', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29rnl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
