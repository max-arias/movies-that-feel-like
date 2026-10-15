-- 0227_seed_20261015T195812Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-15T19:58:42.821561+00:00
-- Run started: 2026-10-15T19:58:12.206992+00:00
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
SELECT p.id, 'https://i.redd.it/uvb813714hvh1.jpeg', 'https://preview.redd.it/uvb813714hvh1.jpeg?width=960&crop=smart&auto=webp&s=f267f17b2f09391703b100b682afdd3708068513', 960, 720, 0, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x5yj15'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ytvjbyxbghvh1.jpg?width=455&format=pjpg&auto=webp&s=51a9c9d358df339b4f8298d426a2f532051185b2', NULL, NULL, NULL, 0, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wvfk7g2cghvh1.jpg?width=1000&format=pjpg&auto=webp&s=826f19e69f36718ddd6fa95582f1172ca22677ae', 'https://preview.redd.it/wvfk7g2cghvh1.jpg?width=960&crop=smart&auto=webp&s=f2c4a40bac7cbc616a914bbc3831731ddfd8b768', 960, 1428, 1, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y0s3896cghvh1.jpg?width=549&format=pjpg&auto=webp&s=5d88c7a08d47451aa2ac50448a111cfbb8dea6ba', NULL, NULL, NULL, 2, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x60dl8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yx6c080z3ivh1.jpg?width=720&format=pjpg&auto=webp&s=4a3d5863b9a716146818e447880328a3c6dcf92c', NULL, NULL, NULL, 0, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/wg3q350z3ivh1.jpg?width=853&format=pjpg&auto=webp&s=bbc171ed3a926089339f682428b3422259818bf6', NULL, NULL, NULL, 1, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0gh9i50z3ivh1.jpg?width=512&format=pjpg&auto=webp&s=51965dc6a29209aabe1e23aabfab36477dce1168', NULL, NULL, NULL, 2, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x63p7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qjuo1dkw6ivh1.jpeg', 'https://preview.redd.it/qjuo1dkw6ivh1.jpeg?width=960&crop=smart&auto=webp&s=5ef6114aa64ee06d6ab622622af1052dc3f4512c', 960, 1319, 0, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x643d6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/nqh6xytq7ivh1.jpg?width=720&format=pjpg&auto=webp&s=6ffe7221834b48c0d133e0bdc3c220ae2ad48a53', NULL, NULL, NULL, 0, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/67mxtytq7ivh1.jpg?width=851&format=pjpg&auto=webp&s=34281b11ad9f4acf4b58e51f2a5e756b5e52bdcc', NULL, NULL, NULL, 1, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/28qzzytq7ivh1.jpg?width=640&format=pjpg&auto=webp&s=ec323fd5c107710d09c0c131660ca5b423d3c001', NULL, NULL, NULL, 2, '2026-10-15 19:58:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x647d8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
