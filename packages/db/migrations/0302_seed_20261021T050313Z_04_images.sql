-- 0302_seed_20261021T050313Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-21T05:03:47.791849+00:00
-- Run started: 2026-10-21T05:03:13.705752+00:00
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
SELECT p.id, 'https://i.redd.it/mows7ixyncwh1.jpg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jryw3hxyncwh1.jpg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ki2wugxyncwh1.jpg', 'https://preview.redd.it/ki2wugxyncwh1.jpg?width=960&auto=webp&s=3af06bf78ddbae8efa35fd877100a46c1ef56bbe', 960, 899, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rbmpihxyncwh1.jpg', NULL, NULL, NULL, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cktxzgxyncwh1.jpg', NULL, NULL, NULL, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f4aj3ixyncwh1.jpg', 'https://preview.redd.it/f4aj3ixyncwh1.jpg?width=960&auto=webp&s=d2fc39f4ccc7c4e6e6e5b95792c785d3740e3daf', 960, 686, 5, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ikf6dhxyncwh1.jpg', NULL, NULL, NULL, 6, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/92a8xoxyncwh1.jpg', 'https://preview.redd.it/92a8xoxyncwh1.jpg?width=960&auto=webp&s=9ab8c3847b7bd89dff5f89cd72a58adc1fd4ad5f', 960, 2133, 7, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ltucwkxyncwh1.jpg', 'https://preview.redd.it/ltucwkxyncwh1.jpg?width=960&auto=webp&s=597d41415e8331b51fd861c4a497eeeb2b9f22dd', 960, 1096, 8, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xxrsglxyncwh1.jpg', 'https://preview.redd.it/xxrsglxyncwh1.jpg?width=960&auto=webp&s=3af616f522e1f47f6aadf95fe5bf182d33c7ab8f', 960, 1362, 9, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k00p6lxyncwh1.jpg', 'https://preview.redd.it/k00p6lxyncwh1.jpg?width=960&auto=webp&s=6e87ae2839dfbdda108d1167902c987e4b8a1e3b', 960, 1812, 10, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ptoykjxyncwh1.jpg', NULL, NULL, NULL, 11, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9yhcgmxyncwh1.jpg', 'https://preview.redd.it/9yhcgmxyncwh1.jpg?width=960&auto=webp&s=de495beb180706c74ff59cd64cdb987749b241d5', 960, 684, 12, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xy0nwlxyncwh1.jpg', 'https://preview.redd.it/xy0nwlxyncwh1.jpg?width=960&auto=webp&s=be8969ee030876d1a0b9ac5a76fefc41620e8730', 960, 982, 13, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ymhvcmxyncwh1.jpg', NULL, NULL, NULL, 14, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dcixdmxyncwh1.jpg', NULL, NULL, NULL, 15, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v5itsmxyncwh1.jpg', 'https://preview.redd.it/v5itsmxyncwh1.jpg?width=960&auto=webp&s=55e867aae566392e090d051b862d9127aa0e7bc9', 960, 1190, 16, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3q2knxyncwh1.jpg', NULL, NULL, NULL, 17, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4u5ulnxyncwh1.jpg', 'https://preview.redd.it/4u5ulnxyncwh1.jpg?width=960&auto=webp&s=f26d953bae379184f86d4fae67f62ac3be63dfd0', 960, 1200, 18, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ucw5fmxyncwh1.jpg', NULL, NULL, NULL, 19, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9n68b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5hvqd50m7dwh1.jpg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bd99kg3m7dwh1.jpg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/smdaws4m7dwh1.jpg', NULL, NULL, NULL, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t07edq6m7dwh1.jpg', NULL, NULL, NULL, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xjbhwu8m7dwh1.jpg', NULL, NULL, NULL, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8ngf55am7dwh1.jpg', NULL, NULL, NULL, 5, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9p2kl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/npshtj6gbdwh1.png', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zorbbj6gbdwh1.jpg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9pfql'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mgitsjrrudwh1.jpg', 'https://preview.redd.it/mgitsjrrudwh1.jpg?width=960&auto=webp&s=8b6e7f03df5b74fb7581b77123128b4a7fba4a1d', 960, 960, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/brxkc10sudwh1.jpg', 'https://preview.redd.it/brxkc10sudwh1.jpg?width=960&auto=webp&s=5eca7b7a3004afa494e36cf085d7d256f47909ac', 960, 960, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tmczp75sudwh1.jpg', 'https://preview.redd.it/tmczp75sudwh1.jpg?width=960&auto=webp&s=839274cfbc6d6aa355e28afb2d2add3f4c171799', 960, 960, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u0d7rcasudwh1.jpg', 'https://preview.redd.it/u0d7rcasudwh1.jpg?width=960&auto=webp&s=bf672ee33454a5b3409b6d6a5bf396a8f83c3bd0', 960, 960, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1f27rsdsudwh1.jpg', 'https://preview.redd.it/1f27rsdsudwh1.jpg?width=960&auto=webp&s=dccd37a6f2b79eefd071996e90a1988e93e802fe', 960, 960, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9r467'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/la4sf4zb3ewh1.jpg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/36abr81c3ewh1.jpg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/if3t2s2c3ewh1.jpg', NULL, NULL, NULL, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ocx3qa4c3ewh1.jpg', NULL, NULL, NULL, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nodke17c3ewh1.jpg', NULL, NULL, NULL, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x9rvg5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6a3aearpwiwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7c9xqnupwiwh1.jpeg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5qyyi7wpwiwh1.jpeg', NULL, NULL, NULL, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0m8psrxpwiwh1.jpeg', NULL, NULL, NULL, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ts1l34zpwiwh1.jpeg', NULL, NULL, NULL, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jx2swo0qwiwh1.jpeg', NULL, NULL, NULL, 5, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ryn6zc2qwiwh1.jpeg', NULL, NULL, NULL, 6, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3v7nir3qwiwh1.jpeg', NULL, NULL, NULL, 7, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gdspaf5qwiwh1.jpeg', NULL, NULL, NULL, 8, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/to05a47qwiwh1.jpeg', NULL, NULL, NULL, 9, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ssv1zn8qwiwh1.jpeg', NULL, NULL, NULL, 10, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaetwx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/Y2lzZnNxazBtandoMdJVGfFKd_XTm4aSb40Nq8rz8H3jArGv6SS0slugvU-v.png?format=pjpg&auto=webp&s=93d5c845d8897817987df64ba476b34643c70b2e', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xahpnm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tikhvgnz3kwh1.jpg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d118qgnz3kwh1.jpg', 'https://preview.redd.it/d118qgnz3kwh1.jpg?width=960&auto=webp&s=24fac1777cd1c75cc22afeaca2d2c606653c42b5', 960, 540, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xajjk1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/Fci3vJBmIje6gyP_b8EeNc9XjLTkt_PX98Co99Tjm74.jpeg?format=pjpg&auto=webp&s=00903e9662de6f934eca7a1846d1d94919e5d1f9', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xal6bv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fe5ydcz2vlwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xapb3b'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rkvrqjnaamwh1.jpeg', 'https://preview.redd.it/rkvrqjnaamwh1.jpeg?width=960&auto=webp&s=d0958db8c0861d96963bd259bd629d05295339bc', 960, 640, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w9v5iinaamwh1.jpeg', 'https://preview.redd.it/w9v5iinaamwh1.jpeg?width=960&auto=webp&s=1361a91eab0ebcfa00e21a6e0950e025880a312a', 960, 514, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1dpjmmnaamwh1.jpeg', NULL, NULL, NULL, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaqzzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rxu3p49p3nwh1.jpeg', 'https://preview.redd.it/rxu3p49p3nwh1.jpeg?width=960&auto=webp&s=3678f30c8e7bc8c68c2fccad9835f3cf47d65adc', 960, 540, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/osvdr59p3nwh1.jpeg', 'https://preview.redd.it/osvdr59p3nwh1.jpeg?width=960&auto=webp&s=082c488f3d4abf2b80ae62ef20334df178b93232', 960, 540, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sudtq49p3nwh1.jpeg', 'https://preview.redd.it/sudtq49p3nwh1.jpeg?width=960&auto=webp&s=17d5edd7f2165847382f9abb633cf3c2456eba51', 960, 540, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z6xfd59p3nwh1.jpeg', 'https://preview.redd.it/z6xfd59p3nwh1.jpeg?width=960&auto=webp&s=99174bc2a77913dff22d4c643b04a35e3c6e7a2b', 960, 540, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xav0am'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3j2ksh777nwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xavjct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/anF6MmkxNHdnbndoMRFAi-MDmt4ZQG2teG89633vJb68SyqDBfqihLQfJGbr.png?format=pjpg&auto=webp&s=e1ec846781b8a0f05e8bf7b724649c4ee3f6284a', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xax0ix'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2maq9xcbinwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xaynwd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mpvoi5mo4lwh1.png', 'https://cf.preview.redd.it/mpvoi5mo4lwh1.png?width=960&auto=webp&s=4ee06464baaab0709f109e526d05414b25997c05', 960, 1361, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb2ajc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4398vuvzkowh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb3290'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mo6f65wv0pwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5smfing00pwh1.jpeg', NULL, NULL, NULL, 1, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1sdq9j5q0pwh1.jpeg', NULL, NULL, NULL, 2, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uh2mx9gf0pwh1.png', NULL, NULL, NULL, 3, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3cda7z2u1pwh1.jpeg', NULL, NULL, NULL, 4, '2026-10-21 05:03:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xb5gce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
