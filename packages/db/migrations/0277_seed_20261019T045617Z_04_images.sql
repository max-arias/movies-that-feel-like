-- 0277_seed_20261019T045617Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-19T04:56:39.943920+00:00
-- Run started: 2026-10-19T04:56:17.283758+00:00
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
SELECT p.id, 'https://i.redd.it/k7gf6scmu6wh1.jpeg', 'https://cf.preview.redd.it/k7gf6scmu6wh1.jpeg?width=960&auto=webp&s=ad94a7142d3e45bbb7713851588176bbd7884010', 960, 1198, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8y8fg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/8LocmqWyTV_S2d4EQgPkCt1KG9xkD3aQCz7TWcY52-Y.jpeg?format=pjpg&auto=webp&s=8ed9b195fa55b17dd002e4f1a90e652dc4cb7e03', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8z5ry'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0o9o4yblc7wh1.jpg', 'https://preview.redd.it/0o9o4yblc7wh1.jpg?width=960&auto=webp&s=1a444667fbd4ad9bef1756552c91e8ac3da09d8c', 960, 1190, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4aygalilc7wh1.jpg', NULL, NULL, NULL, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fqeq9zulc7wh1.jpg', 'https://preview.redd.it/fqeq9zulc7wh1.jpg?width=960&auto=webp&s=16076a106e50a40a775cce24bae376cbcb212305', 960, 1274, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hrbvot0mc7wh1.jpg', NULL, NULL, NULL, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kc7lph6mc7wh1.jpg', NULL, NULL, NULL, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/30240rcmc7wh1.jpg', NULL, NULL, NULL, 5, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0lcq9shmc7wh1.jpg', NULL, NULL, NULL, 6, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x8ztko'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b2m0d4dft2wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90e9y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kexa8ntru2wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90em7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eabe42m7k7wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x90izr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k2vvcwmfb8wh1.png', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pzmnby9gb8wh1.png', 'https://cf.preview.redd.it/pzmnby9gb8wh1.png?width=960&auto=webp&s=884b6aa81c0518b002298599fc70beaee384f6d3', 960, 540, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93j5r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2jegbvaea8wh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0hohptaea8wh1.jpg', 'https://preview.redd.it/0hohptaea8wh1.jpg?width=960&auto=webp&s=fe65b169025087748e58f87884cb9af2114904ce', 960, 797, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8tksxsaea8wh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m6vn6uaea8wh1.jpg', NULL, NULL, NULL, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5cndwtaea8wh1.jpg', NULL, NULL, NULL, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/phc99uaea8wh1.jpg', 'https://preview.redd.it/phc99uaea8wh1.jpg?width=960&auto=webp&s=02b098f1c5455877339b0a91330597eaa4c748d8', 960, 540, 5, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/77wcptaea8wh1.jpg', 'https://preview.redd.it/77wcptaea8wh1.jpg?width=960&auto=webp&s=3afad689c51aace87ee05c928af84d0fc1c2cb4a', 960, 712, 6, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4yzw6uaea8wh1.jpg', 'https://preview.redd.it/4yzw6uaea8wh1.jpg?width=960&auto=webp&s=b9521f5a359e4b8958ed1c92ce5580163d0c8410', 960, 618, 7, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2k9xsu1ob8wh1.jpg', NULL, NULL, NULL, 8, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qz9w74ppb8wh1.jpg', NULL, NULL, NULL, 9, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rcowrgppb8wh1.jpg', NULL, NULL, NULL, 10, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wemqov2dd8wh1.jpg', 'https://preview.redd.it/wemqov2dd8wh1.jpg?width=960&auto=webp&s=039335181405230061b78f787a5ba4c8982f2c67', 960, 574, 11, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wbcghv2dd8wh1.jpg', NULL, NULL, NULL, 12, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ajcsvi4zd8wh1.jpg', NULL, NULL, NULL, 13, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/snulfmrpd8wh1.jpg', 'https://preview.redd.it/snulfmrpd8wh1.jpg?width=960&auto=webp&s=30d06d259e81aaf0bb9eee3cdb855c50ad519f53', 960, 599, 14, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/28padxzmd8wh1.jpg', NULL, NULL, NULL, 15, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hn3vtiu7d8wh1.jpg', NULL, NULL, NULL, 16, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zhtxzgu7d8wh1.jpg', NULL, NULL, NULL, 17, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nn8bipbwd8wh1.jpg', NULL, NULL, NULL, 18, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x93s4a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b5go99jap8wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x957z7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fix9frenp8wh1.jpeg', 'https://preview.redd.it/fix9frenp8wh1.jpeg?width=960&auto=webp&s=75446e64fbc08b1ce0ea32107de3f7d9488253eb', 960, 408, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x959jm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/fOmpy_lXk4gD2YHMusMCzrGCoJDnp2ACrm3dPNNp4X4.jpeg?format=pjpg&auto=webp&s=6599aa92494b239780cb483e0473a83e7ee7d7ef', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x95p2h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wiv0j9ry29wh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lfv0dmry29wh1.jpg', 'https://preview.redd.it/lfv0dmry29wh1.jpg?width=960&auto=webp&s=4aa51dc3c704063c441b5d5e6fe2ced3d083991b', 960, 541, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wbzyucry29wh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ub7jkfry29wh1.jpg', 'https://preview.redd.it/ub7jkfry29wh1.jpg?width=960&auto=webp&s=188ec8d8668c3d9e2ec90ba5cf543420230cbc58', 960, 570, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x974f3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vps0jowi39wh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x976mm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7x0pgjhz89wh1.jpg', 'https://cf.preview.redd.it/7x0pgjhz89wh1.jpg?width=960&auto=webp&s=a5d9ea9ca921cb992f1f99f2b8ff1f0ab2049ec2', 960, 647, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1r5bg9lz89wh1.jpg', 'https://cf.preview.redd.it/1r5bg9lz89wh1.jpg?width=960&auto=webp&s=49537eb4cc797d642a92f74d31ff2323bb11731c', 960, 480, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iy549xnz89wh1.jpg', 'https://cf.preview.redd.it/iy549xnz89wh1.jpg?width=960&auto=webp&s=03db1987030f571bb4a187a89ec1d2ac466c8b53', 960, 520, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bwpvnepz89wh1.jpg', 'https://cf.preview.redd.it/bwpvnepz89wh1.jpg?width=960&auto=webp&s=c06401aaaed29d9e280130eb6a7e0cc4a4ce4c06', 960, 480, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v6e15ktz89wh1.jpg', 'https://cf.preview.redd.it/v6e15ktz89wh1.jpg?width=960&auto=webp&s=c9ba22df3a2910b7bfbf9c31548709bc6a0caa1b', 960, 1280, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x97xfz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d7rm5tgci9wh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/91of6rgci9wh1.jpg', NULL, NULL, NULL, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z1udcrgci9wh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8w37zrgci9wh1.jpg', NULL, NULL, NULL, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x998i0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o100d4yvy9wh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7nro871wy9wh1.jpg', NULL, NULL, NULL, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ou2i3s2wy9wh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/14slh25wy9wh1.jpg', NULL, NULL, NULL, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/32yvrx8wy9wh1.jpg', NULL, NULL, NULL, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z9ydkeawy9wh1.jpg', NULL, NULL, NULL, 5, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bexrrvbwy9wh1.jpg', NULL, NULL, NULL, 6, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9wi90rdwy9wh1.jpg', NULL, NULL, NULL, 7, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9bl2d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/-EpTK0pEgiykknyhxvaAeq4b-EJhNDMGCMBfHJFXvHU.jpeg?format=pjpg&auto=webp&s=023d2e4a2d20a03cba606448f8f0b31b1130c7de', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9djqr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/95um3xrxeawh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jhkd59yxeawh1.jpg', NULL, NULL, NULL, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fjfsm53yeawh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9dtrx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zcq0q7rxmawh1.jpg', 'https://preview.redd.it/zcq0q7rxmawh1.jpg?width=960&auto=webp&s=bf64c2fd0d6f9d366ec5c4c993813b420aeab00c', 960, 1440, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eusz17rxmawh1.jpg', 'https://preview.redd.it/eusz17rxmawh1.jpg?width=960&auto=webp&s=6c0a30b23c2071468332ee9f00e5d5efad15e8ce', 960, 1393, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oowzc7rxmawh1.jpg', 'https://preview.redd.it/oowzc7rxmawh1.jpg?width=960&auto=webp&s=4f4a8daad2f022bc81dd7cfcf76db24c7932573c', 960, 639, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mfku12rxmawh1.jpg', 'https://preview.redd.it/mfku12rxmawh1.jpg?width=960&auto=webp&s=8d5f91d111cee9dae5fbdd0e482dcd16159005a0', 960, 639, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9f11t'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/myb41hz36bwh1.png', 'https://preview.redd.it/myb41hz36bwh1.png?width=960&auto=webp&s=c91f46788aa5663745b6ca55039ec2dea9f95de2', 960, 651, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ynkgmnb46bwh1.png', 'https://preview.redd.it/ynkgmnb46bwh1.png?width=960&auto=webp&s=0a91a85c080965e2fb9cbb0b4cc1cfed1b5ed4ac', 960, 651, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0vszs2o46bwh1.png', 'https://preview.redd.it/0vszs2o46bwh1.png?width=960&auto=webp&s=beec3c3e0a1089562151ce92207ef6604907475e', 960, 440, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d9cwri456bwh1.png', 'https://preview.redd.it/d9cwri456bwh1.png?width=960&auto=webp&s=54ab22a6445187ba668fc8d5c82794909406420a', 960, 655, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uto86nc56bwh1.png', 'https://preview.redd.it/uto86nc56bwh1.png?width=960&auto=webp&s=7fec4b9b7bcc7063b26aae84b69c99698fab03f0', 960, 429, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9haln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ife8jk3u7bwh1.jpg', 'https://preview.redd.it/ife8jk3u7bwh1.jpg?width=960&auto=webp&s=daaac383d7905eeff4e2f77f66276d7b771f2d76', 960, 960, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m3ei5j3u7bwh1.jpg', NULL, NULL, NULL, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6dxcnq3u7bwh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hh8r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y9aa3s61cbwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9hyai'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rvtm8e0dcbwh1.jpg', NULL, NULL, NULL, 0, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pipabybpbbwh1.jpg', 'https://preview.redd.it/pipabybpbbwh1.jpg?width=960&auto=webp&s=209ae70f6d9c92dd570aca890f3253aa6f8b1a40', 960, 948, 1, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fk9p35cpbbwh1.jpg', NULL, NULL, NULL, 2, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o3rutybpbbwh1.jpg', NULL, NULL, NULL, 3, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/toayud0dcbwh1.jpg', NULL, NULL, NULL, 4, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ggzp1zbpbbwh1.jpg', 'https://preview.redd.it/ggzp1zbpbbwh1.jpg?width=960&auto=webp&s=4004fe1ee31838ea7e053828fd42be6dfb9698da', 960, 639, 5, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oe6iczbpbbwh1.jpg', NULL, NULL, NULL, 6, '2026-10-19 04:56:39', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9i1vp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
