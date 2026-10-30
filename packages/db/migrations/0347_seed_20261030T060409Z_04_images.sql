-- 0347_seed_20261030T060409Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-30T06:04:41.542980+00:00
-- Run started: 2026-10-30T06:04:09.150365+00:00
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
SELECT p.id, 'https://i.redd.it/0lebrbm6nfyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xionzv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xilcjyijjgyh1.jpeg', 'https://preview.redd.it/xilcjyijjgyh1.jpeg?width=960&auto=webp&s=e745322b158d8b20e0b7b053baee07b8fc5710a7', 960, 800, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yfej0yijjgyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9oga9yijjgyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vinbi1jjjgyh1.jpeg', 'https://preview.redd.it/vinbi1jjjgyh1.jpeg?width=960&auto=webp&s=7335f228f5a26b13d7dde832c70770b645b301ad', 960, 1278, 3, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3v86ayijjgyh1.jpeg', 'https://preview.redd.it/3v86ayijjgyh1.jpeg?width=960&auto=webp&s=c46b1e15f98c476ff44308ee1619c5c00e388789', 960, 1214, 4, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2gusexijjgyh1.jpeg', 'https://preview.redd.it/2gusexijjgyh1.jpeg?width=960&auto=webp&s=9e0587312c25eeebaf547bb9cad770c273c82bd3', 960, 875, 5, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9lzr5zijjgyh1.jpeg', 'https://preview.redd.it/9lzr5zijjgyh1.jpeg?width=960&auto=webp&s=ed5606de524a42390b63c25e81c2c5052ef0cf01', 960, 890, 6, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xitkxp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6akybsi4pgyh1.jpeg', 'https://preview.redd.it/6akybsi4pgyh1.jpeg?width=960&auto=webp&s=2c39b7fd6f8d57e1361217eb9a4cd4234cdf9dc3', 960, 1436, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f1xjbti4pgyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/003mcti4pgyh1.jpeg', 'https://preview.redd.it/003mcti4pgyh1.jpeg?width=960&auto=webp&s=3feaeda1dfb77bf8cd478e9d58b728e0676499a7', 960, 1433, 2, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiueuo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qbr9c8f4jhyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6u7htwh4jhyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ge009uj4jhyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f4723fl4jhyh1.jpeg', 'https://preview.redd.it/f4723fl4jhyh1.jpeg?width=960&auto=webp&s=21a7714b3afefd21067db4fe670bfff90ff170a1', 960, 1395, 3, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiypnc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bkMgqrbnpiRRBqTCI31QU8XBusLx2SGKSw5tmY3mDqo.jpeg?format=pjpg&auto=webp&s=6dd5fcb5b2d1ff320e1ce3459e3416f8e3ba66e4', NULL, NULL, NULL, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiz0rl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jlpkiqy8vhyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-30 06:04:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj0agz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
