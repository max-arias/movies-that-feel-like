-- 0458_seed_20261126T020658Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T02:07:22.960038+00:00
-- Run started: 2026-11-26T02:06:58.254911+00:00
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
SELECT p.id, 'https://i.redd.it/bwexekxi5g3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ojkuvb0j5g3i1.jpeg', 'https://preview.redd.it/ojkuvb0j5g3i1.jpeg?width=960&auto=webp&s=d8444940e5621bbf5ecfbf80e07946fce2d1bacc', 960, 530, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7i3f503j5g3i1.jpeg', 'https://preview.redd.it/7i3f503j5g3i1.jpeg?width=960&auto=webp&s=e50e50ea65b72fd90d7113887c2b617ba804b521', 960, 539, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/boc8e26j5g3i1.jpeg', 'https://preview.redd.it/boc8e26j5g3i1.jpeg?width=960&auto=webp&s=f82cddf8a63cae22a36fbd054cb2097588659b98', 960, 540, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xond'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i7m1ni296g3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/407no1596g3i1.jpeg', 'https://preview.redd.it/407no1596g3i1.jpeg?width=960&auto=webp&s=4ac3116aeef5d93f9837699edb8bcae933b02d61', 960, 530, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k53szn896g3i1.jpeg', 'https://preview.redd.it/k53szn896g3i1.jpeg?width=960&auto=webp&s=48d9dd3da94776c24cf449c23e9f8a417aa83b48', 960, 539, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rcgox6a96g3i1.jpeg', 'https://preview.redd.it/rcgox6a96g3i1.jpeg?width=960&auto=webp&s=88629526d5c4bed8b37934724a2376878bae263c', 960, 540, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3xrx8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6nfe415elp3i1.jpeg', 'https://preview.redd.it/6nfe415elp3i1.jpeg?width=960&auto=webp&s=fe68d13ff6de04b79a63ac07ec934f7c3d81956f', 960, 607, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y512m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vpv3e15elp3i1.jpeg', 'https://preview.redd.it/vpv3e15elp3i1.jpeg?width=960&auto=webp&s=3c0a828c11545eb0baca2b53a9e8ba59dd6eaab9', 960, 522, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y512m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jxw1v05elp3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y512m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x2sou05elp3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y512m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ijwbo05elp3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y512m6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/46j7isx6up3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y51tv0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4z308007up3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y51tv0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sbnzsu17up3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y51tv0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jqzw1zsvtq3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y54ytm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mft4j6wyrn3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y55rpt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6kr3nguk3r3i1.png', 'https://preview.redd.it/6kr3nguk3r3i1.png?width=960&auto=webp&s=cac1add73ebfbdc01cb40f6f6a9e43b3e9b0ec1a', 960, 540, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y564ec'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e9j720l05s3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qewly6n05s3i1.png', 'https://preview.redd.it/qewly6n05s3i1.png?width=960&auto=webp&s=bfd4c283908fee72af033de74aba4e91f04a2855', 960, 539, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vrjjzto05s3i1.jpeg', 'https://preview.redd.it/vrjjzto05s3i1.jpeg?width=960&auto=webp&s=ba322b87561120ce6bf6df9a4d940201c7151b6b', 960, 501, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3j43ldq05s3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5an8o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jj8r95dmds3i1.jpeg', 'https://preview.redd.it/jj8r95dmds3i1.jpeg?width=960&auto=webp&s=5e282fc6b4a5c34eb894bfe34f67c197b1f3cbb9', 960, 937, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9sfh30dmds3i1.jpeg', 'https://preview.redd.it/9sfh30dmds3i1.jpeg?width=960&auto=webp&s=143c6f72d84ccf09af5d0634b3f504471acc15fd', 960, 621, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nqztm0dmds3i1.jpeg', 'https://preview.redd.it/nqztm0dmds3i1.jpeg?width=960&auto=webp&s=ffc3bbfeab74e09253a29f676934f4e6a20668a1', 960, 540, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xayy8vcmds3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/keai26dmds3i1.jpeg', 'https://preview.redd.it/keai26dmds3i1.jpeg?width=960&auto=webp&s=c16585c998f2eb07eccfb22a3203c531e67bfcac', 960, 527, 4, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5ysq34dmds3i1.jpeg', 'https://preview.redd.it/5ysq34dmds3i1.jpeg?width=960&auto=webp&s=f73cab0b8895ad304f84a9bd8de3e04163f69244', 960, 527, 5, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5bwlo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/em1xuuu5gs3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5c9d5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7j4ibdceos3i1.jpeg', 'https://preview.redd.it/7j4ibdceos3i1.jpeg?width=960&auto=webp&s=835e95af3c64a50cc983ef1513d6d0a7262c106d', 960, 926, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/moq2fcceos3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i98ufgceos3i1.jpeg', 'https://preview.redd.it/i98ufgceos3i1.jpeg?width=960&auto=webp&s=5924e8641a31fae66c32f7741c655bcd648ba6d9', 960, 957, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dhqh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/egmxvyslrs3i1.jpeg', 'https://preview.redd.it/egmxvyslrs3i1.jpeg?width=960&auto=webp&s=0279136172d9c19336181d93e0eec6465f75fac6', 960, 1417, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s57xn1tlrs3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5sups0tlrs3i1.jpeg', 'https://preview.redd.it/5sups0tlrs3i1.jpeg?width=960&auto=webp&s=c63488939408d79c26de0d580ffadc5b9c2978a6', 960, 1458, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5dylm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lxzg8m6wdt3i1.jpeg', 'https://preview.redd.it/lxzg8m6wdt3i1.jpeg?width=960&auto=webp&s=4a31a44a78d10499f22795b58b694744dfcd9475', 960, 1200, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5h554'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lpwm7csodu3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hkk0obsodu3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u76kncsodu3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/evib1bsodu3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ddpecsodu3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hyz3mcsodu3i1.jpeg', NULL, NULL, NULL, 5, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/khdypbsodu3i1.jpeg', NULL, NULL, NULL, 6, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lsvb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k478iii7eu3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lve4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3pee8an7eu3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 02:07:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y5lve4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
