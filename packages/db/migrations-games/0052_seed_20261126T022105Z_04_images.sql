-- 0052_seed_20261126T022105Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T02:21:07.586067+00:00
-- Run started: 2026-11-26T02:21:05.990088+00:00
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
SELECT p.id, 'https://preview.redd.it/cozy-space-station-apartments-v0-syqqr2viyuzc1.jpg?width=1080&crop=smart&auto=webp&s=de82d54c58a344934906b93393f1afc1db31c351', 'https://external-preview.redd.it/pro7g06sfwJvSqAuyVZwTED93Zu7pV-b52HGVm62mao.jpeg?width=960&auto=webp&s=5f6c65472b21b99fc9a5ef223663c39f01f1649b', 960, 537, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y52ltw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r3kp4tcf9q3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uxx97tcf9q3i1.png', 'https://preview.redd.it/uxx97tcf9q3i1.png?width=960&auto=webp&s=dbdea9fce9b175be8f310bb27b66f51d834c0e30', 960, 705, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y534st'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8z83ranchq3i1.jpeg', 'https://preview.redd.it/8z83ranchq3i1.jpeg?width=960&auto=webp&s=5d2d2ba6337abc67c352b5435681d4076f99e524', 960, 716, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vr247bnchq3i1.jpeg', 'https://preview.redd.it/vr247bnchq3i1.jpeg?width=960&auto=webp&s=5b8de16a5e2da28cb8ecd6834a2deb7b0512ba32', 960, 947, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n2l4danchq3i1.jpeg', 'https://preview.redd.it/n2l4danchq3i1.jpeg?width=960&auto=webp&s=a371e9bff06d2c7d7bf3d94e363a6ca1bb1e79a8', 960, 540, 2, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x51r6cnchq3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2pqg39nchq3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y53to0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dqqxmbuh5s3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5apl3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z1bsqjuh5s3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5apl3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fhrfl9uh5s3i1.jpeg', 'https://cf.preview.redd.it/fhrfl9uh5s3i1.jpeg?width=960&auto=webp&s=a00603854f7091de6c533257bdae5f141f4eb6f7', 960, 742, 2, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5apl3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2dw37sm4ws3i1.jpeg', 'https://preview.redd.it/2dw37sm4ws3i1.jpeg?width=960&auto=webp&s=b9ab9c21a082dd3068400b869e387eed5862ee66', 960, 960, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5epm3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hb37uk9z2t3i1.jpeg', 'https://preview.redd.it/hb37uk9z2t3i1.jpeg?width=960&auto=webp&s=7801c635602611ee3c3c802224c6473e50a23e87', 960, 528, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5fp4d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dvtunn1w6t3i1.png', NULL, NULL, NULL, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9878eb2z6t3i1.png', NULL, NULL, NULL, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jhp1y1877t3i1.png', 'https://preview.redd.it/jhp1y1877t3i1.png?width=960&auto=webp&s=a47bdc15103c86992a583e70206d10d9892f53f4', 960, 720, 2, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zen9dd6c7t3i1.png', 'https://preview.redd.it/zen9dd6c7t3i1.png?width=960&auto=webp&s=4fa04d843f5035e36bcc32bcd8095c946b26ecc3', 960, 474, 3, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/35hx8rme8t3i1.png', 'https://preview.redd.it/35hx8rme8t3i1.png?width=960&auto=webp&s=944e9d0cec503e6c838afdd8feabf92ba633d0af', 960, 540, 4, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5gmzd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1mbxpvvfpt3i1.jpeg', 'https://preview.redd.it/1mbxpvvfpt3i1.jpeg?width=960&auto=webp&s=925b5a9111091a20d8951417f947cca211866d1b', 960, 529, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iymfhqggpt3i1.jpeg', 'https://preview.redd.it/iymfhqggpt3i1.jpeg?width=960&auto=webp&s=b21429cb1bd9d800ba87b215ede0d2790bd0ea49', 960, 540, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z46sqqmgpt3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sftl39tgpt3i1.jpeg', 'https://preview.redd.it/sftl39tgpt3i1.jpeg?width=960&auto=webp&s=f2c7b25d57ade4ff1eafe77a482b9ddf78c2fe07', 960, 502, 3, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2r58ah3hpt3i1.png', 'https://preview.redd.it/2r58ah3hpt3i1.png?width=960&auto=webp&s=45e37ab4fd9e09acdb9429b3aa24a082bf83c8c8', 960, 540, 4, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hf5vceehpt3i1.jpeg', 'https://preview.redd.it/hf5vceehpt3i1.jpeg?width=960&auto=webp&s=6577a6b52c3def19baf7f5ca9ad49506c36871d8', 960, 540, 5, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wp02q8qhpt3i1.jpeg', NULL, NULL, NULL, 6, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7hjgg7nipt3i1.jpeg', NULL, NULL, NULL, 7, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iaopgitipt3i1.jpeg', NULL, NULL, NULL, 8, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5jwfu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rm6yygot8u3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5l75x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kh1i9yo6ju3i1.jpeg', 'https://preview.redd.it/kh1i9yo6ju3i1.jpeg?width=960&auto=webp&s=e75f0746eba4cd4071c6fc69366059d63fc225f3', 960, 402, 0, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g15mkyo6ju3i1.jpeg', 'https://preview.redd.it/g15mkyo6ju3i1.jpeg?width=960&auto=webp&s=f7e691831211754a35fcbbe0265c60676a1704b1', 960, 573, 1, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l60eo1p6ju3i1.jpeg', 'https://preview.redd.it/l60eo1p6ju3i1.jpeg?width=960&auto=webp&s=ae3f7ce6ebca81b760d0c8ba13e5ca391bff4b6c', 960, 991, 2, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/itpgg2p6ju3i1.jpeg', 'https://preview.redd.it/itpgg2p6ju3i1.jpeg?width=960&auto=webp&s=2e96ae5274aaca021387922cf487d77346135f05', 960, 399, 3, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v7j6myo6ju3i1.jpeg', 'https://preview.redd.it/v7j6myo6ju3i1.jpeg?width=960&auto=webp&s=1f083c6661f2ed5b9c86d4e3b1df6d9c5b1d3bff', 960, 540, 4, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tz8l15p6ju3i1.jpeg', 'https://preview.redd.it/tz8l15p6ju3i1.jpeg?width=960&auto=webp&s=c8dc7e838cf572a9abb339246c9b1b4f0cf42adc', 960, 608, 5, '2026-11-26 02:21:07', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5mg3u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
