-- 0352_seed_20261031T201954Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-31T20:20:27.506030+00:00
-- Run started: 2026-10-31T20:19:54.428320+00:00
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
SELECT p.id, 'https://i.redd.it/kzjow9ibzfyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y0iyi1ibzfyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/06yco0ibzfyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d88xzfibzfyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fz3ym5ibzfyh1.jpeg', NULL, NULL, NULL, 4, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gdwkf1ibzfyh1.jpeg', NULL, NULL, NULL, 5, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kfq5agibzfyh1.jpeg', NULL, NULL, NULL, 6, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xzgoyfibzfyh1.jpeg', NULL, NULL, NULL, 7, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cbjd5dibzfyh1.jpeg', NULL, NULL, NULL, 8, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjdz6g'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x6iojnn0qlyh1.jpeg', 'https://preview.redd.it/x6iojnn0qlyh1.jpeg?width=960&auto=webp&s=f7e64cb11e78be25d78aa3954bb330841fa99d20', 960, 1030, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjejfq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/im1bep8mxlyh1.jpeg', 'https://preview.redd.it/im1bep8mxlyh1.jpeg?width=960&auto=webp&s=4ccaa724c1da98aabea9d0480ad1c9cd3375b0b7', 960, 600, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a70qiyamxlyh1.jpeg', 'https://preview.redd.it/a70qiyamxlyh1.jpeg?width=960&auto=webp&s=7221738c260c719f6a6bcd127ed2031ff2f7dc2d', 960, 540, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bb4i8ccmxlyh1.jpeg', 'https://preview.redd.it/bb4i8ccmxlyh1.jpeg?width=960&auto=webp&s=4f05bb39a607ecc436bfde730af2107119613195', 960, 540, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8r0fghdmxlyh1.jpeg', 'https://preview.redd.it/8r0fghdmxlyh1.jpeg?width=960&auto=webp&s=2cba7de82519995f1c417d967cafb07a922378ac', 960, 540, 3, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjfj4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/smsshasqmmyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o34ujasqmmyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7vq0cbsqmmyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjj58u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2yyr5q8jpmyh1.jpeg', 'https://preview.redd.it/2yyr5q8jpmyh1.jpeg?width=960&auto=webp&s=5f0930cd994a1bf3323c0dd62638d236947d9c79', 960, 1440, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjl02'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rchysrkiqmyh1.jpeg', 'https://preview.redd.it/rchysrkiqmyh1.jpeg?width=960&auto=webp&s=be79dc3d1a3e41d47e6773a23dbccd2eef50611d', 960, 1440, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ppngskiqmyh1.jpeg', 'https://preview.redd.it/3ppngskiqmyh1.jpeg?width=960&auto=webp&s=fba45e96e156f804ab90b1af40aa73fd6aeccc62', 960, 1181, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j5lg7tkiqmyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5hwq5rkiqmyh1.jpeg', 'https://preview.redd.it/5hwq5rkiqmyh1.jpeg?width=960&auto=webp&s=5406413ccccc81548eccedb1602dc66dc7bcfe6f', 960, 1445, 3, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gm6fxrkiqmyh1.jpeg', 'https://preview.redd.it/gm6fxrkiqmyh1.jpeg?width=960&auto=webp&s=8d2d9eeee3193a808dad2c85ab08e3a80ca186af', 960, 1423, 4, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/meugbskiqmyh1.jpeg', 'https://preview.redd.it/meugbskiqmyh1.jpeg?width=960&auto=webp&s=d6ae8251ae057672dee92e502bce084de263332b', 960, 1440, 5, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wpkuiskiqmyh1.jpeg', 'https://preview.redd.it/wpkuiskiqmyh1.jpeg?width=960&auto=webp&s=fb5f83b208783f4389c182d960cda496e0fd1dea', 960, 1440, 6, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/skhv1skiqmyh1.jpeg', 'https://preview.redd.it/skhv1skiqmyh1.jpeg?width=960&auto=webp&s=61d1d5c2996ad83a1514805092dfd161495fbc9d', 960, 1440, 7, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjjqdu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fsr98hnadkyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjl4of'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3vnzpyb1nyh1.jpeg', 'https://preview.redd.it/n3vnzpyb1nyh1.jpeg?width=960&auto=webp&s=00a799f54eb3d3d503b95cf6ad74aaddd63b2fc1', 960, 540, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjldu6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MnQxcTVkZTg3bnloMQ319PSWpdyxpA60Dj4RY_lhMmddJb2J0UAEZxBkubfo.png?format=pjpg&auto=webp&s=ac3ca6155e0bae1d7537fedbdef5db0ef60e78f3', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmalj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1hx5f1hw7nyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pj2fwn7z7nyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3mq4u9x68nyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/brnhqm098nyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sz55qzbc8nyh1.jpeg', NULL, NULL, NULL, 4, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9byvclce8nyh1.jpeg', NULL, NULL, NULL, 5, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e035ztvg8nyh1.jpeg', NULL, NULL, NULL, 6, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2t5n1wni8nyh1.jpeg', 'https://preview.redd.it/2t5n1wni8nyh1.jpeg?width=960&auto=webp&s=8315864ea05f030afc401b8908a9ddbe7201d7cd', 960, 600, 7, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wafjo8jt8nyh1.jpeg', NULL, NULL, NULL, 8, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4k5n5day8nyh1.jpeg', NULL, NULL, NULL, 9, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l3yoqxa39nyh1.jpeg', NULL, NULL, NULL, 10, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjmket'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/U4VXXJ5sTbCoitQU1vW2_MVAPB0G8Ot0Lw-F2gSE7EI.jpeg?format=pjpg&auto=webp&s=d1cd7da48e0ef80d2b5cccaa242b2ca3bff603e6', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjnwb6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fsr98hnadkyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjoeyl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b9j9xh1a9oyh1.jpeg', 'https://preview.redd.it/b9j9xh1a9oyh1.jpeg?width=960&auto=webp&s=850754f4ace8362d2b3ed2f4d8142968183e1b04', 960, 1440, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u8dd4i1a9oyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n4kj5i1a9oyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cl3eyh1a9oyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjru16'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/maxh6z6jeoyh1.jpeg', 'https://cf.preview.redd.it/maxh6z6jeoyh1.jpeg?width=960&auto=webp&s=357ce40ac573afa220e933ec16d62aaa87df6c62', 960, 765, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjsjco'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ryg3tl3goyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jp26osl3goyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/azo5wrl3goyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 20:20:27', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjss5z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
