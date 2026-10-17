-- 0237_seed_20261017T044640Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T04:47:13.616853+00:00
-- Run started: 2026-10-17T04:46:40.431140+00:00
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
SELECT p.id, 'https://i.redd.it/zptvm3u2zqvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nkz4o3w2zqvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/28n3asx2zqvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x75i6x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xwjy4lnuirvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1a3zoosuirvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/995ap9xuirvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4d5kj50virvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77id1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j4a7mdo6jrvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ip25zrt6jrvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f0y69gz6jrvh1.jpg', 'https://preview.redd.it/f0y69gz6jrvh1.jpg?width=960&auto=webp&s=d028ac1a7d967cbb1def900dbe9dd98dc151f9f8', 960, 528, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ry2le247jrvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aedicw77jrvh1.jpg', 'https://preview.redd.it/aedicw77jrvh1.jpg?width=960&auto=webp&s=f0ef6206d35da45f1fc148c06a12dfa11a7e7f2f', 960, 463, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3zo0m7e7jrvh1.jpg', 'https://preview.redd.it/3zo0m7e7jrvh1.jpg?width=960&auto=webp&s=8f13f9ae2acefac42ce412af3761aab7beb84bc0', 960, 724, 5, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7e7k0bh7jrvh1.jpg', NULL, NULL, NULL, 6, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x77jmk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sczh58uarrvh1.jpeg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x78ajr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4vch3vqdbsvh1.jpg', 'https://preview.redd.it/4vch3vqdbsvh1.jpg?width=960&auto=webp&s=23f2dbb9cc452286caeac7669e49e848715fa95e', 960, 627, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ppiwnuqdbsvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t1jalvqdbsvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4k233vqdbsvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7a3qm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6txr5amoqsvh1.jpeg', 'https://preview.redd.it/6txr5amoqsvh1.jpeg?width=960&auto=webp&s=2ce1e92aeeaacd37420c64ce7c3cc9378d9f1890', 960, 1200, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7bice'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d2wdahozusvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3suqyfozusvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hoo40hozusvh1.jpg', 'https://preview.redd.it/hoo40hozusvh1.jpg?width=960&auto=webp&s=1586767c012456e2c9359cfa376726cc0bfa8803', 960, 540, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/27mehgozusvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wmk7ngozusvh1.jpg', 'https://preview.redd.it/wmk7ngozusvh1.jpg?width=960&auto=webp&s=59093f9c92158f6081cff29f13845a68630aa725', 960, 540, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7btbh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gv4wmu4tptvh1.jpg', 'https://preview.redd.it/gv4wmu4tptvh1.jpg?width=960&auto=webp&s=0782a6a1c6c9d51e801fddc07d3b19a89b7b39c5', 960, 540, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pwsr4qltptvh1.jpg', 'https://preview.redd.it/pwsr4qltptvh1.jpg?width=960&auto=webp&s=6528fc241abaaa39917911920d727d08f2e649d7', 960, 540, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cozuyl6uptvh1.jpg', 'https://preview.redd.it/cozuyl6uptvh1.jpg?width=960&auto=webp&s=4f920eb8c3a793ce5a11a431493f0c4ec474241e', 960, 540, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4xrdj2yvptvh1.jpg', 'https://preview.redd.it/4xrdj2yvptvh1.jpg?width=960&auto=webp&s=8d1ec63ed7b0bde55196c462fa572e170d2d1be9', 960, 720, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ezx0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/it5hv5wkqtvh1.jpg', 'https://preview.redd.it/it5hv5wkqtvh1.jpg?width=960&auto=webp&s=d9c22ea21d1631668ce3682b5fe8a23190d9dae8', 960, 436, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eabkbi7lqtvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/48w32cglqtvh1.jpg', 'https://preview.redd.it/48w32cglqtvh1.jpg?width=960&auto=webp&s=83f8618f5d886ae29986bc10a9e772809e5524c6', 960, 539, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7f2sd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/towr7smhstvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/40sv51phstvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u4q776rhstvh1.jpg', 'https://preview.redd.it/u4q776rhstvh1.jpg?width=960&auto=webp&s=677657b85ffb81c3f76013a134030a7a536438f7', 960, 539, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fayx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c0qhikdxwtvh1.jpeg', 'https://preview.redd.it/c0qhikdxwtvh1.jpeg?width=960&auto=webp&s=95925fc92fa29801766e0a9a4745e862c50acbdb', 960, 640, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7fvf2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c8kjuzj39tvh1.jpg', 'https://preview.redd.it/c8kjuzj39tvh1.jpg?width=960&auto=webp&s=6cf068488e0a496901ffb09a7912c762987f446a', 960, 1217, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9ns9yzj39tvh1.jpg', 'https://preview.redd.it/9ns9yzj39tvh1.jpg?width=960&auto=webp&s=3dafd6291d85913cb9aae96e6a7995ec5c797ff9', 960, 1217, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hcogyzj39tvh1.jpg', 'https://preview.redd.it/hcogyzj39tvh1.jpg?width=960&auto=webp&s=a4a98a47496ede8f12ba6b2831d973df303206f0', 960, 1217, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l73tmzj39tvh1.jpg', 'https://preview.redd.it/l73tmzj39tvh1.jpg?width=960&auto=webp&s=dfe2765d7463a43f8fb9dced0624127fe9b65d3f', 960, 1217, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/401npzj39tvh1.jpg', 'https://preview.redd.it/401npzj39tvh1.jpg?width=960&auto=webp&s=1c5ea6ce302817e301a8ac962ae6d3ede4006a0a', 960, 1216, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7hi48'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9q21qd72slvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9oexrsf2slvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ctxtaqn2slvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ss2jb2r2slvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s400gai3slvh1.jpg', NULL, NULL, NULL, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pqqtkss3slvh1.jpg', NULL, NULL, NULL, 5, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y156ra74slvh1.jpg', NULL, NULL, NULL, 6, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1v0zr1c4slvh1.jpg', NULL, NULL, NULL, 7, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ic1j00g4slvh1.jpg', NULL, NULL, NULL, 8, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qnz6l2l4slvh1.jpg', NULL, NULL, NULL, 9, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/01523vp4slvh1.jpg', NULL, NULL, NULL, 10, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fogm8hv4slvh1.jpg', NULL, NULL, NULL, 11, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7kvvr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7s18olpqxuvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2g3exwvqxuvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/srufhx0rxuvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7l4it'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lm7qmw3a3vvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7tjux86a3vvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xfalok7a3vvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n4ufpv9a3vvh1.jpg', NULL, NULL, NULL, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7ly30'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/twiyvx3nmvvh1.jpg', 'https://cf.preview.redd.it/twiyvx3nmvvh1.jpg?width=960&auto=webp&s=db9a4edcb390013914c31cf4180b67754ba414d0', 960, 632, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vor8aa6nmvvh1.jpg', 'https://cf.preview.redd.it/vor8aa6nmvvh1.jpg?width=960&auto=webp&s=412e7ec88b0e3fec78a95c6fc60d37df095a4740', 960, 629, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vuqb328nmvvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h4vex49nmvvh1.jpg', 'https://cf.preview.redd.it/h4vex49nmvvh1.jpg?width=960&auto=webp&s=78a2d37336270ee044fad519de2c40814437a617', 960, 623, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7m0wxobnmvvh1.jpg', NULL, NULL, NULL, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7os8l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yyk8icphwvvh1.jpg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/56lrgdrhwvvh1.jpg', NULL, NULL, NULL, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zj3b74thwvvh1.jpg', NULL, NULL, NULL, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7q7jl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7e6ypej31wvh1.jpeg', NULL, NULL, NULL, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7qv5r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zlwcgbku5wvh1.jpg', 'https://preview.redd.it/zlwcgbku5wvh1.jpg?width=960&auto=webp&s=5fa7c7c6efa6e6f54f13f3cefaacee1b813286b4', 960, 1440, 0, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ldhibku5wvh1.jpg', 'https://preview.redd.it/1ldhibku5wvh1.jpg?width=960&auto=webp&s=254a1a26f1aab2446e700c4032f62983ccc7fcc6', 960, 1440, 1, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0d8j0cku5wvh1.jpg', 'https://preview.redd.it/0d8j0cku5wvh1.jpg?width=960&auto=webp&s=41084cfade27692b6fa07905c304d00b35400550', 960, 1440, 2, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4p9c4bku5wvh1.jpg', 'https://preview.redd.it/4p9c4bku5wvh1.jpg?width=960&auto=webp&s=aa007db3da2492b3e34a7efe4b714f456c748f2d', 960, 1440, 3, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0il62bku5wvh1.jpg', 'https://preview.redd.it/0il62bku5wvh1.jpg?width=960&auto=webp&s=56cac3cf7057bc93a80bd1c95f53f41393542329', 960, 1440, 4, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e23wicku5wvh1.jpg', 'https://preview.redd.it/e23wicku5wvh1.jpg?width=960&auto=webp&s=24221829fb2d8b582f35a8a365a0ee30e3e8968a', 960, 1440, 5, '2026-10-17 04:47:13', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x7rivr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
