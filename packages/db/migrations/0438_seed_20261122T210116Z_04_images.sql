-- 0438_seed_20261122T210116Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T21:01:41.348770+00:00
-- Run started: 2026-11-22T21:01:16.994010+00:00
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
SELECT p.id, 'https://i.redd.it/14mp5v0qec1i1.jpeg', 'https://preview.redd.it/14mp5v0qec1i1.jpeg?width=960&auto=webp&s=4e6c4d9587028dc066ea8404f21d4067ab9965d9', 960, 1236, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v7jv1z0qec1i1.jpeg', 'https://preview.redd.it/v7jv1z0qec1i1.jpeg?width=960&auto=webp&s=7fab9c5d8153b0e9dbc6399932ba10cb4f9f2e95', 960, 540, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4cn2py0qec1i1.jpeg', 'https://preview.redd.it/4cn2py0qec1i1.jpeg?width=960&auto=webp&s=cb50fcf129c2740208096830a5db977aab988204', 960, 540, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x1ebly0qec1i1.jpeg', 'https://preview.redd.it/x1ebly0qec1i1.jpeg?width=960&auto=webp&s=81a12fe843e91472e9307f0a3e76098072562282', 960, 540, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fnslsx0qec1i1.jpeg', 'https://preview.redd.it/fnslsx0qec1i1.jpeg?width=960&auto=webp&s=7ced55670dba36d9ab562d4c241cf640dd1070f2', 960, 1172, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv31mz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i0zqqh50tc1i1.jpeg', 'https://preview.redd.it/i0zqqh50tc1i1.jpeg?width=960&auto=webp&s=02636e775c8c5cf6a7df990583b4c17590ff2507', 960, 972, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gt3z1h50tc1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zimcmg50tc1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/piswug50tc1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p06h9h50tc1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2b2nch50tc1i1.jpeg', 'https://preview.redd.it/2b2nch50tc1i1.jpeg?width=960&auto=webp&s=d67fca0fc3c6e46e26a5b10efc05ebc7833a082b', 960, 679, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vmv66h50tc1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv411s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6dvasvn8zc1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0qo8wyq8zc1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ipl8ls8zc1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p4gbr7u8zc1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/54w0iwv8zc1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ydpgbix8zc1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hqpin2z8zc1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xcuvnl09zc1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv4li3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eln5yiq5zd1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9ecrmiq5zd1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5jwg2hq5zd1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rd6qsjq5zd1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ih10zhq5zd1i1.jpeg', 'https://preview.redd.it/ih10zhq5zd1i1.jpeg?width=960&auto=webp&s=d1c5381fdeab776cde721951f7a7eb6115367ed6', 960, 640, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jihb0kq5zd1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vh860jq5zd1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3z5e2kq5zd1i1.jpeg', 'https://preview.redd.it/3z5e2kq5zd1i1.jpeg?width=960&auto=webp&s=e1e701979b5e1abc5d744c02a33c21db5b055c3e', 960, 1248, 7, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xv8nda'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/44-9Zn6VXZuMhFkY_YRtNqz98dM1VzyqUW13am_uotQ.jpeg?format=pjpg&auto=webp&s=c717c20fb03ab152e908c851bd0c04a064c3a901', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xva1og'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0of3u79dre1i1.jpeg', 'https://preview.redd.it/0of3u79dre1i1.jpeg?width=960&auto=webp&s=ae7d94794524a66a772cb5ab98b31679b6cbef98', 960, 1687, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvco5d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0pk1gxlkse1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0y9eczlkse1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rmxm20lkse1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvczht'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fqn2qbq8ue1i1.png', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3tanlaq8ue1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e4mk9bq8ue1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvd7ru'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9y5y1rijif1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6y2g1wijif1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9i891sijif1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j71s1rijif1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvgse5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bnc335evkf1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/thsg0bevkf1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nmq3owdvkf1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sjye03evkf1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jr3pfzdvkf1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z1eci0evkf1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1tz21devkf1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvh540'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6b6yceiatf1i1.jpeg', 'https://preview.redd.it/6b6yceiatf1i1.jpeg?width=960&auto=webp&s=01c52952f392cf4cc1126f2d1c56d3aaea608718', 960, 517, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xviczd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5gafil68wf1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wno5bj68wf1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f8s50i68wf1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l0btxi68wf1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gj69yi68wf1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvirpq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MIrLjRIfDQNVU8XqfuAxgrTGc9W8RDM7lpf9XxGJ9vc.jpeg?format=pjpg&auto=webp&s=0f51e8e9e4c49d39ff4a87a42219ec063cb984c3', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvm811'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nylcsoqslg1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6h7hroqslg1i1.jpeg', 'https://preview.redd.it/6h7hroqslg1i1.jpeg?width=960&auto=webp&s=310b15f712c2107781814cc9d654cb320fff3e82', 960, 1357, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ttdggoqslg1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lt7fsoqslg1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lzqaznqslg1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dkp00oqslg1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/huzmryqslg1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvmbed'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0rza7chyfh1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1idg3ehyfh1i1.jpeg', 'https://preview.redd.it/1idg3ehyfh1i1.jpeg?width=960&auto=webp&s=2eb4fe585b55200aa5f2d547848f945b28c2cefc', 960, 1442, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bji2fdhyfh1i1.jpeg', 'https://preview.redd.it/bji2fdhyfh1i1.jpeg?width=960&auto=webp&s=3fb5398d6f72881bf34142db5539b3df16557b77', 960, 1168, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7y84zehyfh1i1.jpeg', 'https://preview.redd.it/7y84zehyfh1i1.jpeg?width=960&auto=webp&s=9263ae8994684564de3f96622ed6deef01910307', 960, 1163, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/itxqqfhyfh1i1.jpeg', 'https://preview.redd.it/itxqqfhyfh1i1.jpeg?width=960&auto=webp&s=46af36857c225e8e399ea4deba9348294d2a72a9', 960, 1439, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bfwq0ehyfh1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvpz2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d75zre7nzh1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/427lje7nzh1i1.jpeg', 'https://preview.redd.it/427lje7nzh1i1.jpeg?width=960&auto=webp&s=0976c51f91169a5c6adb73a2222afc49e6e0392c', 960, 1706, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bbbgge7nzh1i1.jpeg', 'https://preview.redd.it/bbbgge7nzh1i1.jpeg?width=960&auto=webp&s=1ba148de858709b1effbb5284d654f3ef72620bd', 960, 1706, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l3ezvy7nzh1i1.jpeg', 'https://preview.redd.it/l3ezvy7nzh1i1.jpeg?width=960&auto=webp&s=6710a43b45ae1cc6b65aa3064a12c28458fddd3b', 960, 639, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gtb7ne7nzh1i1.jpeg', 'https://preview.redd.it/gtb7ne7nzh1i1.jpeg?width=960&auto=webp&s=8ffeaf0efbd8682cead2f0ad5eafd8c082d29b67', 960, 640, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i7c7ef7nzh1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvs52y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/idrh5v721i1i1.jpeg', 'https://preview.redd.it/idrh5v721i1i1.jpeg?width=960&auto=webp&s=3f030e6edf191e9e1a66dcf5afd870930b5bd719', 960, 960, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/thhnys721i1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/85aomt721i1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6jpvut721i1i1.jpeg', 'https://preview.redd.it/6jpvut721i1i1.jpeg?width=960&auto=webp&s=21609d8e85ff0f4c4160fae83db4f8912586a154', 960, 720, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvsc6s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ng407cyq9i1i1.png', 'https://preview.redd.it/ng407cyq9i1i1.png?width=960&auto=webp&s=7dfe65dfc7c17afecffeb157f1e094142945ef8e', 960, 1555, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvt70w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f9ovwuxrqi1i1.jpeg', 'https://preview.redd.it/f9ovwuxrqi1i1.jpeg?width=960&auto=webp&s=a4c41ed69808032c71ff1a97388e91637929cc82', 960, 1442, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m9bwiuxrqi1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s5uekuxrqi1i1.jpeg', 'https://preview.redd.it/s5uekuxrqi1i1.jpeg?width=960&auto=webp&s=15ddb190e061b8ef092c4cc2bedaafff78cabe77', 960, 960, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9aijgvxrqi1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x649suxrqi1i1.jpeg', 'https://preview.redd.it/x649suxrqi1i1.jpeg?width=960&auto=webp&s=ecd86a45d320758b8d760f91bad55e4f37c1a9d8', 960, 720, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1g6mluxrqi1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2oicfuxrqi1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvuwo1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xqvxdn77ti1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7d60ucb7ti1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pyzxrcd7ti1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ybi705f7ti1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/33ggltg7ti1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/007uyii7ti1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 21:01:41', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvv5f6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
