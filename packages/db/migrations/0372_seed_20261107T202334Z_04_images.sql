-- 0372_seed_20261107T202334Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-07T20:24:11.978548+00:00
-- Run started: 2026-11-07T20:23:34.064963+00:00
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
SELECT p.id, 'https://i.redd.it/wmgpknshopxh1.jpeg', 'https://preview.redd.it/wmgpknshopxh1.jpeg?width=960&auto=webp&s=904eef898b89c8309c727669afe427c9a4973b65', 960, 720, 0, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i30pvgshopxh1.jpeg', 'https://preview.redd.it/i30pvgshopxh1.jpeg?width=960&auto=webp&s=a1ae337b54c4e7235eef10200e01882c6db999f6', 960, 720, 1, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d8ty5pshopxh1.jpeg', 'https://preview.redd.it/d8ty5pshopxh1.jpeg?width=960&auto=webp&s=a7eab99a1d3f6f533604c41876b2566bbaf62126', 960, 800, 2, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0smwahshopxh1.jpeg', 'https://preview.redd.it/0smwahshopxh1.jpeg?width=960&auto=webp&s=7dafd506b2bb04125fb84561eb7b3eca6821cc55', 960, 1320, 3, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4o7xahshopxh1.jpeg', 'https://preview.redd.it/4o7xahshopxh1.jpeg?width=960&auto=webp&s=7849c3250622ad845baa47c95303b22cd421d958', 960, 720, 4, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oecazgshopxh1.jpeg', 'https://preview.redd.it/oecazgshopxh1.jpeg?width=960&auto=webp&s=4e54170d96409b15ca108f395887e2341b5700af', 960, 720, 5, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zfzqiishopxh1.jpeg', 'https://preview.redd.it/zfzqiishopxh1.jpeg?width=960&auto=webp&s=cf8dddcfde3a4b48e05ea729e10a2a856303aeaf', 960, 720, 6, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mnd72sshopxh1.jpeg', 'https://preview.redd.it/mnd72sshopxh1.jpeg?width=960&auto=webp&s=91051d7d2dd443573ca227c8009d224a9dbfb3f4', 960, 540, 7, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eduuuhshopxh1.jpeg', 'https://preview.redd.it/eduuuhshopxh1.jpeg?width=960&auto=webp&s=05d50ff9857d1a6211feadc9ceaee07ea8738c84', 960, 720, 8, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/glttzishopxh1.jpeg', NULL, NULL, NULL, 9, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tr4gijshopxh1.jpeg', 'https://preview.redd.it/tr4gijshopxh1.jpeg?width=960&auto=webp&s=a7135bdc4aba67dea20791f3df59966a1b62be57', 960, 968, 10, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/746afishopxh1.jpeg', 'https://preview.redd.it/746afishopxh1.jpeg?width=960&auto=webp&s=9f843126aa3589d26e34e6d15c0c9a3c1266f367', 960, 720, 11, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp0oo3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ol-bwiw4CH4wYm0w9Eomj09j6iktPUY55hzE8TcHjRg.jpeg?format=pjpg&auto=webp&s=dc5771e63a5abcf1622a7d298518ecbd772c7b13', NULL, NULL, NULL, 0, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp29yl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y3wfz658wwzh1.jpeg', NULL, NULL, NULL, 0, '2026-11-07 20:24:11', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xp2p1m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
