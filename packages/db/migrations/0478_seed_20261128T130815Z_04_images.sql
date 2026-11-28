-- 0478_seed_20261128T130815Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T13:08:41.017203+00:00
-- Run started: 2026-11-28T13:08:15.549539+00:00
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
SELECT p.id, 'https://i.redd.it/zb01bspmi01i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f41eqggni01i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0ywbgl4oi01i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ti99g1moi01i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mcokwm9pi01i1.jpeg', NULL, NULL, NULL, 4, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtmqpg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rj8ulo3u111i1.png', 'https://cf.preview.redd.it/rj8ulo3u111i1.png?width=960&auto=webp&s=68b1aff5425d9316404ab1d14dc4a94606680bef', 960, 639, 0, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtpwha'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sihxmzf8211i1.png', NULL, NULL, NULL, 1, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtpwha'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n5emr5hmu11i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/may879lmu11i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n7bv09omu11i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 13:08:40', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xttvl1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
