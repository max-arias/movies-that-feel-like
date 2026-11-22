-- 0433_seed_20261122T130020Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T13:01:12.526554+00:00
-- Run started: 2026-11-22T13:00:20.685310+00:00
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
SELECT p.id, 'https://i.redd.it/eeay8rwixi1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvvllt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MIrLjRIfDQNVU8XqfuAxgrTGc9W8RDM7lpf9XxGJ9vc.jpeg?format=pjpg&auto=webp&s=0f51e8e9e4c49d39ff4a87a42219ec063cb984c3', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx3mo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MIrLjRIfDQNVU8XqfuAxgrTGc9W8RDM7lpf9XxGJ9vc.jpeg?format=pjpg&auto=webp&s=0f51e8e9e4c49d39ff4a87a42219ec063cb984c3', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvx5k8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q6z1qdjnij1i1.png', 'https://preview.redd.it/q6z1qdjnij1i1.png?width=960&auto=webp&s=4110c0c0c9cbec38d28d7bd819f5cc83f90a0e95', 960, 540, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/no11ve5oij1i1.png', 'https://preview.redd.it/no11ve5oij1i1.png?width=960&auto=webp&s=8039c668f9b3df996c77cbe40c5ca938a29c4205', 960, 540, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xvfnfgxpij1i1.png', 'https://preview.redd.it/xvfnfgxpij1i1.png?width=960&auto=webp&s=51e700da52432a3618e2781bb5784bf109f4a55c', 960, 540, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvxj0c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bxwx07nymj1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvy526'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ekx4gs4sj1i1.jpeg', 'https://preview.redd.it/3ekx4gs4sj1i1.jpeg?width=960&auto=webp&s=000eb4443fcbb4042e2cb029f1eaba59e9e271e1', 960, 1330, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hjungux4sj1i1.jpeg', 'https://preview.redd.it/hjungux4sj1i1.jpeg?width=960&auto=webp&s=a59e814479987e625785d2b6d55b344dbb958a7a', 960, 988, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gl9a2415sj1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvycaq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1hyvbtystj1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rgz83s2ttj1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3fu71l4ttj1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ksjot66ttj1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l4d8v87ttj1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pub2188ttj1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/neuxaa9ttj1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n1zhlpattj1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvyhd1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cxgyzvwgsi1i1.png', 'https://preview.redd.it/cxgyzvwgsi1i1.png?width=960&auto=webp&s=5fe10c2fe9aee49df2ee25caf44dc0de5146e081', 960, 1643, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/26lyzq8hsi1i1.png', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oj2tr2ihsi1i1.png', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qqo7ucslsi1i1.png', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvz1q2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c7s3o21e9k1i1.png', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6c3we59e9k1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/482ewibe9k1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/57xd3wde9k1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2bc6nage9k1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ksraqeie9k1i1.jpeg', 'https://preview.redd.it/ksraqeie9k1i1.jpeg?width=960&auto=webp&s=85f88d1ba123ea17299a0a3bd5b1accf58c76df4', 960, 960, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/45xfztke9k1i1.jpeg', 'https://preview.redd.it/45xfztke9k1i1.jpeg?width=960&auto=webp&s=e01e29611b6e5feddc2dbe5ea732d7001fc1cdd7', 960, 905, 6, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kjryf9ne9k1i1.jpeg', 'https://preview.redd.it/kjryf9ne9k1i1.jpeg?width=960&auto=webp&s=68314dc3f8250d7ae0132eb4f8f92a432ced462e', 960, 540, 7, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/naqejaqe9k1i1.jpeg', 'https://preview.redd.it/naqejaqe9k1i1.jpeg?width=960&auto=webp&s=60e77a10dd0ee977df8c1a6ef1898fccb14696c4', 960, 1200, 8, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gpvtmgse9k1i1.jpeg', 'https://preview.redd.it/gpvtmgse9k1i1.jpeg?width=960&auto=webp&s=937fe44545f0fb92f76833851eccfeffbc143df8', 960, 960, 9, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6bse8uue9k1i1.jpeg', 'https://preview.redd.it/6bse8uue9k1i1.jpeg?width=960&auto=webp&s=c1ab216c5a8fecd63417feb812621fd7020f91f8', 960, 1763, 10, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xvzvmx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eaecv9htdk1i1.jpeg', 'https://cf.preview.redd.it/eaecv9htdk1i1.jpeg?width=960&auto=webp&s=7d07f639c2ce4b2bb14d635c92f194269409e880', 960, 1706, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r3jjjqktdk1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zl2752ptdk1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l504mkttdk1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/70is6qvtdk1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw0a7x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mvymsn7xok1i1.jpeg', 'https://preview.redd.it/mvymsn7xok1i1.jpeg?width=960&auto=webp&s=4eaaa513bdb11a5552b55bf13bd7313cdada4cbc', 960, 710, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1e0o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wryb8u92pk1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2fociv92pk1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/82tatv92pk1i1.jpeg', 'https://cf.preview.redd.it/82tatv92pk1i1.jpeg?width=960&auto=webp&s=03b82db838a10cce1a97e3b46ef10095ba58738d', 960, 960, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/napsju92pk1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d4ygqv92pk1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pkkr1v92pk1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ku9mzx92pk1i1.jpeg', 'https://cf.preview.redd.it/ku9mzx92pk1i1.jpeg?width=960&auto=webp&s=722be407db3b552ff66581cf09494461ad6faef9', 960, 747, 6, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6a5jbv92pk1i1.jpeg', 'https://cf.preview.redd.it/6a5jbv92pk1i1.jpeg?width=960&auto=webp&s=cd056420c725a26f9ee000743732e53731bd05f9', 960, 720, 7, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1ek4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uvms3mdlsk1i1.jpeg', 'https://preview.redd.it/uvms3mdlsk1i1.jpeg?width=960&auto=webp&s=df0956b60b343ebebacdef2523b80438f040f9cc', 960, 2087, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pmfk5mdlsk1i1.jpeg', 'https://preview.redd.it/pmfk5mdlsk1i1.jpeg?width=960&auto=webp&s=df3eb4a91f921019bf4add2ab6cb77ebdeedb517', 960, 2087, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/err8ymdlsk1i1.jpeg', 'https://preview.redd.it/err8ymdlsk1i1.jpeg?width=960&auto=webp&s=bc5e9b26a6436a7905df83062c5eb11c55f0afb5', 960, 2087, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3xa0vldlsk1i1.jpeg', 'https://preview.redd.it/3xa0vldlsk1i1.jpeg?width=960&auto=webp&s=4f2b77b81f1d20f7f636360c12ab998f97f8ac96', 960, 2087, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwqsbmdlsk1i1.jpeg', 'https://preview.redd.it/zwqsbmdlsk1i1.jpeg?width=960&auto=webp&s=b0a750918ca0f3b58cc0aae7400fc71c38ac51a8', 960, 2087, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xe5a5mdlsk1i1.jpeg', 'https://preview.redd.it/xe5a5mdlsk1i1.jpeg?width=960&auto=webp&s=08c34ca0ba30569fdfa2ef884bb51164caf775ef', 960, 2087, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kqbbtldlsk1i1.jpeg', 'https://preview.redd.it/kqbbtldlsk1i1.jpeg?width=960&auto=webp&s=b34a03038cef6f31ad05ae52abd7bac72e5b5845', 960, 2087, 6, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2hmkn7elsk1i1.jpeg', 'https://preview.redd.it/2hmkn7elsk1i1.jpeg?width=960&auto=webp&s=40814037b4833c88cf96e4dd4805bbf875ad8459', 960, 2087, 7, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1rvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ajkkj8nvsk1i1.jpeg', 'https://preview.redd.it/ajkkj8nvsk1i1.jpeg?width=960&auto=webp&s=511e7744fec9550acc3d179ad2348aed86e91b5e', 960, 1440, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5gegcxuvsk1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugtagj0wsk1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6vi5ik3wsk1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/quuhtx5wsk1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ed1g4q8wsk1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw1t33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0su7ef43kl1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/niixcda3kl1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uj1ivgd3kl1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw569j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vru1gv3ywl1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5m3wvv3ywl1i1.jpeg', 'https://preview.redd.it/5m3wvv3ywl1i1.jpeg?width=960&auto=webp&s=e0e6715134c26015fe92497d885bc439e699de21', 960, 1022, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w1w18v3ywl1i1.jpeg', 'https://preview.redd.it/w1w18v3ywl1i1.jpeg?width=960&auto=webp&s=ebdff5268d59af6865aa63b3b5bf0db24265f41e', 960, 1115, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kafd5v3ywl1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ayfugv3ywl1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n9wy8v3ywl1i1.jpeg', 'https://preview.redd.it/n9wy8v3ywl1i1.jpeg?width=960&auto=webp&s=e2f9da0bc21c1fff01fa36c7566839d7f19dd934', 960, 755, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw6wvy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gvwgcm36yl1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1rz5y3b6yl1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/86eq63h6yl1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0wf62wk6yl1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9zx67xn6yl1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ax32amq6yl1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw72zt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1w5cpmd5fm1i1.jpeg', 'https://preview.redd.it/1w5cpmd5fm1i1.jpeg?width=960&auto=webp&s=161c6f8e423966dda0535b668dcc5ecc7b1be296', 960, 680, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i9kbrod5fm1i1.jpeg', 'https://preview.redd.it/i9kbrod5fm1i1.jpeg?width=960&auto=webp&s=dfe58a3b86cf4eeae5fb946371ecda3afffe4044', 960, 962, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/81dunnd5fm1i1.jpeg', 'https://preview.redd.it/81dunnd5fm1i1.jpeg?width=960&auto=webp&s=3881214f1be5a9b9a92ea9edc04e868e70595c3c', 960, 976, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t9rpbnd5fm1i1.jpeg', 'https://preview.redd.it/t9rpbnd5fm1i1.jpeg?width=960&auto=webp&s=a437361f011984815c47816a409e21ffce6dca9a', 960, 1671, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5auognd5fm1i1.jpeg', 'https://preview.redd.it/5auognd5fm1i1.jpeg?width=960&auto=webp&s=d046f746e713503cfff34c596939104b0cb25ae9', 960, 1207, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xw9gld'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ew60xrbs7n1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w6d1drbs7n1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sr6yssbs7n1i1.jpeg', 'https://preview.redd.it/sr6yssbs7n1i1.jpeg?width=960&auto=webp&s=dab0422be2a382690dc3581191c51a9d2a47b766', 960, 960, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mx068rbs7n1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h90uoybs7n1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1is4vrbs7n1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwdary'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ansos077fn1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a84ul077fn1i1.jpeg', 'https://preview.redd.it/a84ul077fn1i1.jpeg?width=960&auto=webp&s=32203262546441f33f3007115d5771cddb0c320b', 960, 1438, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fo2t0077fn1i1.jpeg', 'https://preview.redd.it/fo2t0077fn1i1.jpeg?width=960&auto=webp&s=1b12f29e52bcc6882521f65050de633c4d324a30', 960, 1438, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ei119077fn1i1.jpeg', 'https://preview.redd.it/ei119077fn1i1.jpeg?width=960&auto=webp&s=a250f2f43e2766e5f6d95095132f4d0aec741c34', 960, 1280, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v0v66077fn1i1.jpeg', 'https://preview.redd.it/v0v66077fn1i1.jpeg?width=960&auto=webp&s=04955901647c718bba3e6934e020fbb1d9db67e1', 960, 1196, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwe8bi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pqe40g6jrn1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yfp1ph6jrn1i1.jpeg', 'https://preview.redd.it/yfp1ph6jrn1i1.jpeg?width=960&auto=webp&s=93ab338fb4db2adffd0f659b11466a845b33786d', 960, 1438, 1, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/86yh6i6jrn1i1.jpeg', 'https://preview.redd.it/86yh6i6jrn1i1.jpeg?width=960&auto=webp&s=9afd92488daf8d8b690e5dec10fd1d0f8175cf9d', 960, 1438, 2, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ij8j2i6jrn1i1.jpeg', 'https://preview.redd.it/ij8j2i6jrn1i1.jpeg?width=960&auto=webp&s=4b3db6e445596b88b2b3146c4417bb07d640ffc2', 960, 1280, 3, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x79f9h6jrn1i1.jpeg', 'https://preview.redd.it/x79f9h6jrn1i1.jpeg?width=960&auto=webp&s=d5e46553579f30b462edd209a303d81991cac9b1', 960, 1196, 4, '2026-11-22 13:01:12', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwfqvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
