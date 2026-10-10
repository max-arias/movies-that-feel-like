-- 0197_seed_20261010T201940Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-10T20:20:08.435593+00:00
-- Run started: 2026-10-10T20:19:40.422137+00:00
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
SELECT p.id, 'https://i.redd.it/8gp3upxjdfuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1in26'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r9ea693j4guh1.jpeg', 'https://preview.redd.it/r9ea693j4guh1.jpeg?width=960&crop=smart&auto=webp&s=7a229fe7d87bfd4e247a9002f9bd06addbc75b12', 960, 540, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1lsap'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tsbp9fyrbguh1.jpg?width=736&format=pjpg&auto=webp&s=80cc9a540cf316c90f84b7c58748851153e5bab2', NULL, NULL, NULL, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9fg4b79sbguh1.jpg?width=736&format=pjpg&auto=webp&s=547e71b1f5db982cbd9ae1b6bbc476c93f2d9683', NULL, NULL, NULL, 1, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5uk5xqjsbguh1.jpg?width=703&format=pjpg&auto=webp&s=63621e6d809cfca5c4a1c33635e1ddfb2e17dbc4', NULL, NULL, NULL, 2, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/h5npgmssbguh1.jpg?width=736&format=pjpg&auto=webp&s=6288ddef3d453de3b0d045bff7279e4e7da402e4', NULL, NULL, NULL, 3, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/83sa8t3tbguh1.jpg?width=736&format=pjpg&auto=webp&s=104596c10fabd8956645d33f4e1eff91bbbc6fe5', NULL, NULL, NULL, 4, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1mt62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5014spz1uguh1.jpg?width=1179&format=pjpg&auto=webp&s=e60d7217cab3ae33197576b7e99d04055bb2f8b2', 'https://preview.redd.it/5014spz1uguh1.jpg?width=960&crop=smart&auto=webp&s=96d77a3c7c0511ee2cae7f8a8e3286c6b67535a7', 960, 664, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0t10dpz1uguh1.jpg?width=1179&format=pjpg&auto=webp&s=397f7368fcc998cb4a0f0654aeddd66e4796737d', 'https://preview.redd.it/0t10dpz1uguh1.jpg?width=960&crop=smart&auto=webp&s=056eded1d3d9b20db0814ded16b5598b11942c40', 960, 1012, 1, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kkcwvoz1uguh1.jpg?width=1179&format=pjpg&auto=webp&s=1235cb37431c40c340373c4dcfee9fff913a4a40', 'https://preview.redd.it/kkcwvoz1uguh1.jpg?width=960&crop=smart&auto=webp&s=6772fe64a521c41a77645522c1994686aba1c526', 960, 626, 2, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/s3840pz1uguh1.jpg?width=1179&format=pjpg&auto=webp&s=00363a7592caf95e0fa656743bac62923cf1c93f', 'https://preview.redd.it/s3840pz1uguh1.jpg?width=960&crop=smart&auto=webp&s=6c12514f52c1fd787b7226b497731d85aa3df5ca', 960, 948, 3, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/b1nkeoz1uguh1.jpg?width=1076&format=pjpg&auto=webp&s=7dc0ea896535fce2853847c0061bc16c9750d2aa', 'https://preview.redd.it/b1nkeoz1uguh1.jpg?width=960&crop=smart&auto=webp&s=26812e47bc716e6435615e0ead1994f9c1abe975', 960, 633, 4, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1pesr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/emJ6dWlhNjUwaHVoMfMA6LLIFusIL40nEUvO57E4796kpa8meP1IIDRyvWrj.png?format=pjpg&auto=webp&s=475191fd82d71b53749cb70a8cc4ea81eebc1f77', 'https://external-preview.redd.it/emJ6dWlhNjUwaHVoMfMA6LLIFusIL40nEUvO57E4796kpa8meP1IIDRyvWrj.png?width=960&crop=smart&format=pjpg&auto=webp&s=da32a10f6a200a7ac7da03274be4551f489b329b', 960, 985, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1qb8s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hw67d292fhuh1.jpg?width=640&format=pjpg&auto=webp&s=a143d513a1baca64d18cb590dc0fd2371b28170a', NULL, NULL, NULL, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tvd2p292fhuh1.jpg?width=680&format=pjpg&auto=webp&s=f3b94097f3a774954af1bcc904bbe52c700da338', NULL, NULL, NULL, 1, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mb0zp292fhuh1.jpg?width=640&format=pjpg&auto=webp&s=5e9c5aa20044b39bc76a6a2be2e6d0b9b908fbd4', NULL, NULL, NULL, 2, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u8amp492fhuh1.jpg?width=1320&format=pjpg&auto=webp&s=af26f035c32fb5f95f2d44afc30a6812371b10b6', 'https://preview.redd.it/u8amp492fhuh1.jpg?width=960&crop=smart&auto=webp&s=aa811da52e9910d8b71dc6454d97d8f02b32bcd3', 960, 1346, 3, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mucg6492fhuh1.jpg?width=612&format=pjpg&auto=webp&s=31917bd736f4b602fe139c78d6c5987be96c2fb5', NULL, NULL, NULL, 4, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xv7ae292fhuh1.jpg?width=707&format=pjpg&auto=webp&s=2a4fb01c25f78fab7e0029cff962444e3b057e84', NULL, NULL, NULL, 5, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1sgd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y6ue74hirhuh1.jpg?width=547&format=pjpg&auto=webp&s=74f916cb4a377206791d8bee13a7bfe9a94b962f', NULL, NULL, NULL, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/c9pgo1jirhuh1.jpg?width=448&format=pjpg&auto=webp&s=7208db5fd91ebe4b1ed84c028ab1a0b653749169', NULL, NULL, NULL, 1, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xc2qaakirhuh1.jpg?width=472&format=pjpg&auto=webp&s=a249405a7e02eb201586f1a45f8613d4a3e6d053', NULL, NULL, NULL, 2, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/uy69uclirhuh1.jpg?width=503&format=pjpg&auto=webp&s=06b6d96d1eee756176e21b26eaf5ec7a8d0bfb56', NULL, NULL, NULL, 3, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yk7t6gmirhuh1.jpg?width=677&format=pjpg&auto=webp&s=d29d17701bfc7c9b16acb66b063ef43a27d1546b', NULL, NULL, NULL, 4, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7xq7linirhuh1.jpg?width=759&format=pjpg&auto=webp&s=65e3f77144ceec15a908b6b0bc90ce761ca45c2f', NULL, NULL, NULL, 5, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1u9lr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dg5h7b8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=60ee59ec9a4096e3ef48a2ae9b5686999d323c3c', NULL, NULL, NULL, 0, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5tcnz88f1juh1.jpg?width=750&format=pjpg&auto=webp&s=52e9073666ce088a78caa4ff3fc54d2846174caa', NULL, NULL, NULL, 1, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/54qtjc8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=5f824413ef00173e078b9f360c20688c1306fcda', NULL, NULL, NULL, 2, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vuoyub8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=13db44c3e6fce5fd8fdcc923f1015515212f5a99', NULL, NULL, NULL, 3, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5yanta8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=6488a4e2a6ae82e47a529319a8cfe2672eb224fd', NULL, NULL, NULL, 4, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/heonke8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=f14f744954e1e8669a05ae742eaf96df4e66c1c9', NULL, NULL, NULL, 5, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bcapub8f1juh1.jpg?width=750&format=pjpg&auto=webp&s=fd7d5cfcb031a5b5a054a4a719621b53e450039b', NULL, NULL, NULL, 6, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/htkas88f1juh1.jpg?width=750&format=pjpg&auto=webp&s=54e53e58b2850389cfe617353186f9bb3e0697be', NULL, NULL, NULL, 7, '2026-10-10 20:20:08', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x20dtr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
