-- 0292_seed_20261020T200627Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T20:06:54.139944+00:00
-- Run started: 2026-10-20T20:06:27.323265+00:00
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
SELECT p.id, 'https://external-preview.redd.it/NHp6azZ6bzFqZndoMdIcMZlCBqMWhDH8pRezJsu7fs3BW0U5xz9ictUm3VKA.png?format=pjpg&auto=webp&s=b96c95ddbcedbd4648c7762771ac50f979bcbbd4', NULL, NULL, NULL, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9xib4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/svj8y72knfwh1.jpg', NULL, NULL, NULL, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/32dx6l5knfwh1.jpg', NULL, NULL, NULL, 1, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/07cqnu6knfwh1.jpg', NULL, NULL, NULL, 2, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jwcq298knfwh1.jpg', NULL, NULL, NULL, 3, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oxy7t4aknfwh1.jpg', NULL, NULL, NULL, 4, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v7gjlmbknfwh1.jpg', NULL, NULL, NULL, 5, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9y5ig'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xr8pagvrofwh1.jpg', NULL, NULL, NULL, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i3vdaj0sofwh1.jpg', NULL, NULL, NULL, 1, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dece6c2sofwh1.jpg', NULL, NULL, NULL, 2, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mjo0eo5sofwh1.jpg', NULL, NULL, NULL, 3, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i7gm2o7sofwh1.jpg', NULL, NULL, NULL, 4, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxheho9sofwh1.jpg', NULL, NULL, NULL, 5, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kdootlbsofwh1.jpg', NULL, NULL, NULL, 6, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hcj9aycsofwh1.jpg', NULL, NULL, NULL, 7, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9ybrs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qwqzs7ur2gwh1.jpg', NULL, NULL, NULL, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1kfhfm6u2gwh1.jpg', NULL, NULL, NULL, 1, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dhr8i0eu2gwh1.jpg', NULL, NULL, NULL, 2, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7n5tqoru2gwh1.jpg', NULL, NULL, NULL, 3, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dgtyr90v2gwh1.jpg', NULL, NULL, NULL, 4, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9ag0a88v2gwh1.jpg', NULL, NULL, NULL, 5, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hylfqxdv2gwh1.jpg', NULL, NULL, NULL, 6, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pwpcneqv2gwh1.jpg', NULL, NULL, NULL, 7, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z18423vv2gwh1.jpg', NULL, NULL, NULL, 8, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kea298hx2gwh1.jpg', NULL, NULL, NULL, 9, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h5ucmuvx2gwh1.jpg', NULL, NULL, NULL, 10, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa0er4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5xbdyv0fegwh1.jpg', 'https://preview.redd.it/5xbdyv0fegwh1.jpg?width=960&auto=webp&s=7491d58ab474a3ad535fba77a7503f95aaa66b9c', 960, 1404, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kd79bv0fegwh1.jpg', 'https://preview.redd.it/kd79bv0fegwh1.jpg?width=960&auto=webp&s=563f8be6197be23c8deda123969d37059d0e0772', 960, 1438, 1, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3z217w0fegwh1.jpg', 'https://preview.redd.it/3z217w0fegwh1.jpg?width=960&auto=webp&s=ee439955dcdc5fdbb325e0bc833862ce0f494a38', 960, 520, 2, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h6dhzu0fegwh1.jpg', 'https://preview.redd.it/h6dhzu0fegwh1.jpg?width=960&auto=webp&s=f7bcc822e33b66ddae78b9a9e3b642193ff09b06', 960, 1208, 3, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ok6cat0fegwh1.jpg', NULL, NULL, NULL, 4, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa24h8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/aWwya251aWFmZ3doMTXMgH7wps0uUFEOzsnkqxKNxKIUURapIQ3PbNd_E4-w.jpeg?format=pjpg&auto=webp&s=d92ca8ed1959ef624937707e2c78018ac9c6553b', 'https://external-preview.redd.it/aWwya251aWFmZ3doMTXMgH7wps0uUFEOzsnkqxKNxKIUURapIQ3PbNd_E4-w.jpeg?width=960&format=pjpg&auto=webp&s=b452c72cb8bd83fdcf948a3f2aae7b2d193e920c', 960, 1706, 0, '2026-10-20 20:06:54', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xa296g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
