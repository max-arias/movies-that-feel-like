-- 0017_seed_20261120T221841Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T22:18:41.518283+00:00
-- Run started: 2026-11-20T22:18:41.262060+00:00
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
SELECT p.id, 'https://i.redd.it/iqatugplmg2i1.png', NULL, NULL, NULL, 0, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kjxvghcumg2i1.png', 'https://cf.preview.redd.it/kjxvghcumg2i1.png?width=960&auto=webp&s=311f744937d8c1e60d1090c0740b50821203f086', 960, 540, 1, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kt9o1wj0ng2i1.png', NULL, NULL, NULL, 2, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hsrm7vj0ng2i1.png', NULL, NULL, NULL, 3, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7ph0uyj0ng2i1.png', 'https://cf.preview.redd.it/7ph0uyj0ng2i1.png?width=960&auto=webp&s=531495be8ed25349b53a1ac201d1580a04badb5c', 960, 540, 4, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fv0hdyj0ng2i1.png', 'https://cf.preview.redd.it/fv0hdyj0ng2i1.png?width=960&auto=webp&s=8448577f5c563e9a76afb9a77ae8a15425861775', 960, 540, 5, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/seqoc0k0ng2i1.png', 'https://cf.preview.redd.it/seqoc0k0ng2i1.png?width=960&auto=webp&s=a631ce53fa8d3419f636e032026659a9a3477ffd', 960, 540, 6, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6vjxxuj0ng2i1.png', 'https://cf.preview.redd.it/6vjxxuj0ng2i1.png?width=960&auto=webp&s=3434da198352580512cf9f2d4c233ef5021a24fd', 960, 523, 7, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3oh5svj0ng2i1.png', NULL, NULL, NULL, 8, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/or30ayj0ng2i1.png', 'https://cf.preview.redd.it/or30ayj0ng2i1.png?width=960&auto=webp&s=82216401a39277ee9ecf209e819beb020c3da47e', 960, 365, 9, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2f8j02e5ng2i1.png', 'https://cf.preview.redd.it/2f8j02e5ng2i1.png?width=960&auto=webp&s=83014048382dd70bbd7fea66e76dfe5da6e81ba3', 960, 540, 10, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5cm020a9ng2i1.png', NULL, NULL, NULL, 11, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv1da'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uz66q23tng2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1bkau1ywng2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vx7qhja0og2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 22:18:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzv4as'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
