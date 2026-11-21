-- 0022_seed_20261121T130739Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T13:07:40.431136+00:00
-- Run started: 2026-11-21T13:07:39.857017+00:00
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
SELECT p.id, 'https://i.redd.it/13i6nnxv5u2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/byuxapzv5u2i1.jpeg', 'https://preview.redd.it/byuxapzv5u2i1.jpeg?width=960&auto=webp&s=f5497c93d7c1c6f9684c9076cc8081a9c7d68838', 960, 960, 1, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x4b3rg1w5u2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fg9g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/43zgmpld9u2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bjq34pld9u2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w92igsld9u2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n02xesld9u2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ut254sld9u2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/183sfsld9u2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/btui2sld9u2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b29o1sld9u2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n5257sld9u2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wmfduuld9u2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dkywusld9u2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k0ln0sld9u2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fwmb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MDUzYmFsNWFkdTJpMYvU6JZPMnx-5XffsVja_e4HSTgb159YMneYOevHXZC5.png?format=pjpg&auto=webp&s=c94a5c2cead5ea13ff5c38247c512e1dac7842f3', 'https://external-preview.redd.it/MDUzYmFsNWFkdTJpMYvU6JZPMnx-5XffsVja_e4HSTgb159YMneYOevHXZC5.png?width=960&format=pjpg&auto=webp&s=49d0949c3f9f1df491b792e7fea87d42929a9c34', 960, 540, 0, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gg9e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1qm1zlopfu2i1.png', NULL, NULL, NULL, 0, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1gq5w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8gjwmuhjbu2i1.png', NULL, NULL, NULL, 0, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/izgdooz5cu2i1.png', 'https://preview.redd.it/izgdooz5cu2i1.png?width=960&auto=webp&s=91d484c348411331553fda33c374312a2edb2f00', 960, 540, 1, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1l3v25xzeu2i1.png', 'https://preview.redd.it/1l3v25xzeu2i1.png?width=960&auto=webp&s=100577e840a5dd5e0bb044a023d0902cdfd1bed3', 960, 88, 2, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qvr7a8y5gu2i1.png', NULL, NULL, NULL, 3, '2026-11-21 13:07:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1h3c8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
