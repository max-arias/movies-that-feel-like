-- 0062_seed_20261127T204555Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-27T20:45:57.264067+00:00
-- Run started: 2026-11-27T20:45:55.711652+00:00
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
SELECT p.id, 'https://i.redd.it/jlq2jmp7vu3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5nv83'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x87to0yvev3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/noq7i0yvev3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gzymu0yvev3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dw5ni0yvev3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h95lq0yvev3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5q0hb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/axfvents1w3i1.jpeg', 'https://preview.redd.it/axfvents1w3i1.jpeg?width=960&auto=webp&s=364991640eacaafa0a62e7590c80a25a0508cf9e', 960, 536, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/brkbxx4b8w3i1.png', 'https://preview.redd.it/brkbxx4b8w3i1.png?width=960&auto=webp&s=d6d57cdff957aeca909ad739a9c8c81703324cc7', 960, 546, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cw05aiob8w3i1.png', 'https://preview.redd.it/cw05aiob8w3i1.png?width=960&auto=webp&s=7e1c4da4a8a8f5c9eaea3994dc7a8922470daeb0', 960, 546, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s6vkepfs7w3i1.png', 'https://preview.redd.it/s6vkepfs7w3i1.png?width=960&auto=webp&s=aa702dab53aeac032cf140a03c06713c69588080', 960, 542, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2bg80rv57w3i1.png', 'https://preview.redd.it/2bg80rv57w3i1.png?width=960&auto=webp&s=dd9279ce0569b109ebab6bb7d09625fd878a49af', 960, 542, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a0hqlg302w3i1.png', 'https://preview.redd.it/a0hqlg302w3i1.png?width=960&auto=webp&s=9ca8088cee1dd8c3f4e8b654f0e30402a236f85f', 960, 540, 5, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ocer0vn02w3i1.png', 'https://preview.redd.it/ocer0vn02w3i1.png?width=960&auto=webp&s=9738e920d2177f56f4e02b77e599f908f7d9ece5', 960, 540, 6, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/up53m8dr1w3i1.png', 'https://preview.redd.it/up53m8dr1w3i1.png?width=960&auto=webp&s=3e3e41b6ade450b40fc07294bec496af72f37fca', 960, 539, 7, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ndhqiar42w3i1.png', NULL, NULL, NULL, 8, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/65gj1m6f5w3i1.png', 'https://preview.redd.it/65gj1m6f5w3i1.png?width=960&auto=webp&s=c020530d22e6e417a6eb71c8c8d9a6ef10fb52fa', 960, 539, 9, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5t3fa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e9lrjn6buw3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5v83v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5mi1o5ftbx3i1.png', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5wt3g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4fb8xixbiy3i1.png', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ae2npjxbiy3i1.png', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ciyubjxbiy3i1.png', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rt10bjxbiy3i1.png', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uuyahlxbiy3i1.png', NULL, NULL, NULL, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m4ai2lxbiy3i1.png', NULL, NULL, NULL, 5, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y60w1a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jwmvue6ppy3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y61r9d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wv75li6wwy3i1.jpeg', 'https://preview.redd.it/wv75li6wwy3i1.jpeg?width=960&auto=webp&s=e2aed1399afa49ccdfc17b0fecf4851d3fa3cef9', 960, 600, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c37u9j6wwy3i1.jpeg', 'https://preview.redd.it/c37u9j6wwy3i1.jpeg?width=960&auto=webp&s=bfd82e8e3e6dd5dfcc6efe03d3c0dd03f99e4bf5', 960, 705, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xz08zh6wwy3i1.jpeg', 'https://preview.redd.it/xz08zh6wwy3i1.jpeg?width=960&auto=webp&s=ca95aef5e2ab43322c0932f531d447bf25ffac3f', 960, 714, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2vvs0j6wwy3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zcp0xu6wwy3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62nu9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x6og7tocyy3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2a7k1tocyy3i1.jpeg', 'https://preview.redd.it/2a7k1tocyy3i1.jpeg?width=960&auto=webp&s=7d4a984057ccf287ed6317b938317797b90f4656', 960, 540, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zj7lytocyy3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kgxyguocyy3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y62tr6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qevk6g1x0z3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pv4crm4x0z3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6355f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n516vbw5az3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y64d6k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vvqmilw2b04i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qz5unmw2b04i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7ht1mlw2b04i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ir9zcow2b04i1.jpeg', 'https://preview.redd.it/ir9zcow2b04i1.jpeg?width=960&auto=webp&s=a412a817a37680e87e96e27aade0940d6f59a2cc', 960, 680, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y69f49'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mdvkohjzm04i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6atxv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g96pw1fip04i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b52a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pyt0illkp04i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6b57q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mgtlg81e014i1.jpeg', 'https://cf.preview.redd.it/mgtlg81e014i1.jpeg?width=960&auto=webp&s=5815ccb5ddc84dc4c0094009058d2a51324c03df', 960, 401, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w4epn61e014i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7b5yn71e014i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3gf1f81e014i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c27wu71e014i1.png', 'https://cf.preview.redd.it/c27wu71e014i1.png?width=960&auto=webp&s=1f29b01b4338ba99681e77ee51f62108b411f8ea', 960, 540, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u3utf91e014i1.jpeg', 'https://cf.preview.redd.it/u3utf91e014i1.jpeg?width=960&auto=webp&s=a782e22753f057ea97c88187cd2ad59b5423c26c', 960, 655, 5, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e2zkr81e014i1.jpeg', NULL, NULL, NULL, 6, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cgv7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dmb6wgrt414i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cyat'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qhdnoawt414i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6cyat'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0t4931ec514i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oehtp7gc514i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b4cgl8ic514i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xnaeq8kc514i1.jpeg', NULL, NULL, NULL, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/64ztq9mc514i1.jpeg', NULL, NULL, NULL, 4, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6d0dx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qy06xalo814i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r2d19eoo814i1.jpeg', NULL, NULL, NULL, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/utgcilqo814i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6ddzq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7pwpozbe914i1.jpeg', 'https://preview.redd.it/7pwpozbe914i1.jpeg?width=960&auto=webp&s=90df78f072422c58cb89103cf975ac810d76d49a', 960, 508, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4uvstzbe914i1.jpeg', 'https://preview.redd.it/4uvstzbe914i1.jpeg?width=960&auto=webp&s=812164ceda07a181e08f0eabc917b6557e37be65', 960, 720, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0zr3uybe914i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/12512zbe914i1.jpeg', 'https://preview.redd.it/12512zbe914i1.jpeg?width=960&auto=webp&s=631698b5f338f78512cdfbe2eeead2e10749b633', 960, 405, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6dgtd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s94iwdirf14i1.jpeg', 'https://preview.redd.it/s94iwdirf14i1.jpeg?width=960&auto=webp&s=3a0d1bab575f736d8fa400f6cca60f1826cf609d', 960, 411, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1newk6krf14i1.jpeg', 'https://preview.redd.it/1newk6krf14i1.jpeg?width=960&auto=webp&s=04defd4e982b86de23625bcc063b1db024d11dff', 960, 540, 1, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e31h4emrf14i1.jpeg', NULL, NULL, NULL, 2, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oyk64knrf14i1.jpeg', 'https://preview.redd.it/oyk64knrf14i1.jpeg?width=960&auto=webp&s=c3ad09f0d4d4e2fba9585d72348233b7246da5fe', 960, 540, 3, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e5nk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ksirqhzhg14i1.jpeg', NULL, NULL, NULL, 0, '2026-11-27 20:45:57', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6e8i4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
