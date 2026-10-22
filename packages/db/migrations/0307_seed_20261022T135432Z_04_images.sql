-- 0307_seed_20261022T135432Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-22T13:55:04.851164+00:00
-- Run started: 2026-10-22T13:54:32.293740+00:00
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
SELECT p.id, 'https://i.redd.it/dqwp378v7wwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kxmbn6cv7wwh1.jpeg', NULL, NULL, NULL, 1, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/43obi0ev7wwh1.jpeg', NULL, NULL, NULL, 2, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2entg6gv7wwh1.jpeg', NULL, NULL, NULL, 3, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/btncx1iv7wwh1.jpeg', NULL, NULL, NULL, 4, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/79ylvwjv7wwh1.jpeg', NULL, NULL, NULL, 5, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rgc4mxmv7wwh1.jpeg', NULL, NULL, NULL, 6, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lr2vvppv7wwh1.jpeg', NULL, NULL, NULL, 7, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xvxioprv7wwh1.jpeg', NULL, NULL, NULL, 8, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4sopvetv7wwh1.jpeg', NULL, NULL, NULL, 9, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ibs7jhvv7wwh1.jpeg', NULL, NULL, NULL, 10, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc0uku'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nkevz65kawwh1.jpeg', NULL, NULL, NULL, 0, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qflj6h7kawwh1.jpeg', NULL, NULL, NULL, 1, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kldfj49kawwh1.jpeg', 'https://preview.redd.it/kldfj49kawwh1.jpeg?width=960&auto=webp&s=1fdb6ad4d912050b154f0fe55594e23f0c6ffecf', 960, 540, 2, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fu87t9ckawwh1.jpeg', NULL, NULL, NULL, 3, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b3aea3ekawwh1.jpeg', NULL, NULL, NULL, 4, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ifhalpgkawwh1.jpeg', NULL, NULL, NULL, 5, '2026-10-22 13:55:04', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc17k0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
