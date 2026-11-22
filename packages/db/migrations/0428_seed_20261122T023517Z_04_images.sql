-- 0428_seed_20261122T023517Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-22T02:35:52.753561+00:00
-- Run started: 2026-11-22T02:35:17.624969+00:00
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
SELECT p.id, 'https://external-preview.redd.it/w7XUTuQIpKMk6pIdSU-K3JCX8sirxdcB8Q0MN9tYiIs.jpeg?auto=webp&s=4d550bacf4a65cd4a3b7e58498576f9a52906a7a', 'https://external-preview.redd.it/w7XUTuQIpKMk6pIdSU-K3JCX8sirxdcB8Q0MN9tYiIs.jpeg?width=960&auto=webp&s=95655fcdf0ad91276eb68eb721c743a422d22f5a', 960, 512, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwh0qj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oitpmx4hfo1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qpai1x4hfo1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5n691v4hfo1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwikuu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pc8wjufjfo1i1.jpeg', 'https://preview.redd.it/pc8wjufjfo1i1.jpeg?width=960&auto=webp&s=6a266fb73daa322f3f04d88b8e2f9fce5ddb3805', 960, 1458, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ymyey5kvfo1i1.jpeg', 'https://preview.redd.it/ymyey5kvfo1i1.jpeg?width=960&auto=webp&s=1aef9b3b48504a84791dc9319a7672f13bff7ce7', 960, 1476, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m41zl6kvfo1i1.jpeg', 'https://preview.redd.it/m41zl6kvfo1i1.jpeg?width=960&auto=webp&s=212a3f7aafe25591ac645be602e3d270f33a0d6f', 960, 1476, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eo2je7kvfo1i1.jpeg', 'https://preview.redd.it/eo2je7kvfo1i1.jpeg?width=960&auto=webp&s=e9dde5e11fa522d822b43d03e654677afe756527', 960, 1476, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v18f27kvfo1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwin5k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i5hfl4pvvo1i1.jpeg', 'https://preview.redd.it/i5hfl4pvvo1i1.jpeg?width=960&auto=webp&s=1b9d6d39a6c5cfca7c0283fe3b5e38f265a6dd27', 960, 634, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eztaw3pvvo1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bhz7g6pvvo1i1.jpeg', 'https://preview.redd.it/bhz7g6pvvo1i1.jpeg?width=960&auto=webp&s=62eebcea047680acc3b06a238d015bc32c33fdc6', 960, 1200, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qmbr15pvvo1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jyw8a4pvvo1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xm8q74pvvo1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/03t4n5pvvo1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ifgmu4pvvo1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwkc33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/arffl866ek1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwnzu5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wgi6ny0miv2i1.jpeg', 'https://preview.redd.it/wgi6ny0miv2i1.jpeg?width=960&auto=webp&s=341773ad1991adccc1a7fdc14265a3ff2d15ce05', 960, 758, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rij19y0miv2i1.jpeg', 'https://preview.redd.it/rij19y0miv2i1.jpeg?width=960&auto=webp&s=ea8bcb79985274c5de4fb2ee15ddfb010bec75b5', 960, 1282, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5c4lw71miv2i1.jpeg', 'https://preview.redd.it/5c4lw71miv2i1.jpeg?width=960&auto=webp&s=140da263272a317b0f87b83afbd91dc677e7f780', 960, 1147, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/89setd1miv2i1.jpeg', 'https://preview.redd.it/89setd1miv2i1.jpeg?width=960&auto=webp&s=07d10ecddbc4ce16e88047a708a5f8726a6dcc43', 960, 2077, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/27vwly0miv2i1.jpeg', 'https://preview.redd.it/27vwly0miv2i1.jpeg?width=960&auto=webp&s=81e7b290afb97eed1df6af8c2242990e62e0499e', 960, 1224, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1lb82'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1d5x39m0xv2i1.jpeg', 'https://preview.redd.it/1d5x39m0xv2i1.jpeg?width=960&auto=webp&s=43c81b7a9070fe243509e27378146aea0a5fcc74', 960, 536, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1mv1m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ufqlytsh1w2i1.png', 'https://preview.redd.it/ufqlytsh1w2i1.png?width=960&auto=webp&s=8aa38452431244a8c35505d4907d4b4323d1889a', 960, 480, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncof'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nh0qdgwbgw2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f2czc5ybgw2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pth3sczbgw2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ou5d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wh28w2h5ay2i1.jpeg', 'https://preview.redd.it/wh28w2h5ay2i1.jpeg?width=960&auto=webp&s=56894fd7f388fa60cea94219899d643c456c5536', 960, 1519, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/18ga43h5ay2i1.jpeg', 'https://preview.redd.it/18ga43h5ay2i1.jpeg?width=960&auto=webp&s=a02407d38179c1d9944f57086fc629c37e1b6213', 960, 1538, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/140qz6h5ay2i1.jpeg', 'https://preview.redd.it/140qz6h5ay2i1.jpeg?width=960&auto=webp&s=840478a8ac03b972348c62fb8278c5ca913cb98a', 960, 540, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rlfvu6h5ay2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vpf2h6h5ay2i1.jpeg', 'https://preview.redd.it/vpf2h6h5ay2i1.jpeg?width=960&auto=webp&s=22ceac08f89378611ec4bc6b128d4b97599ae489', 960, 960, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1utdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2g11dihupy2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/su64bckupy2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ixlylqnupy2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yp0cf3supy2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwcx9utupy2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ffibodwupy2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1wc62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vnm9yiq7xy2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1x5jk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xwe45n3gaz2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1yplg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fmyv54zykz2i1.jpeg', 'https://preview.redd.it/fmyv54zykz2i1.jpeg?width=960&auto=webp&s=c1ed8b3a44106fac2ab9fb47a061bdde9f799ed0', 960, 799, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0ou0f4zykz2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rlmdrbzykz2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w8ty5czykz2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2055r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/juejdf6ynz2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/maqiig6ynz2i1.jpeg', 'https://cf.preview.redd.it/maqiig6ynz2i1.jpeg?width=960&auto=webp&s=f65cfb2544bde160cd4f470493a443d0c57c7ab4', 960, 654, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7au0rf6ynz2i1.jpeg', 'https://cf.preview.redd.it/7au0rf6ynz2i1.jpeg?width=960&auto=webp&s=2978c1e83324bb76ac45307afc84a1d5ec1367cc', 960, 672, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fd4thf6ynz2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v0c0lf6ynz2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iikmmg6ynz2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/770dsf6ynz2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z8uvwg6ynz2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y20ey6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/I5Yrgn4sbOAUhj-k6zd22XxIEt5V6coNESuCKknOM5E.jpeg?auto=webp&s=4d70b25385bf8a2c29a51c88b210324803d10ba4', 'https://external-preview.redd.it/I5Yrgn4sbOAUhj-k6zd22XxIEt5V6coNESuCKknOM5E.jpeg?width=960&auto=webp&s=f3eb6369f5bf1c13b96b83e2e0b8e8bedc2a9bbc', 960, 504, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y22crt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xe44tfvkb03i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/560bieclb03i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vphgjhelb03i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6yok0tglb03i1.jpeg', 'https://preview.redd.it/6yok0tglb03i1.jpeg?width=960&auto=webp&s=c999c95f447b90ca422c6dd89ac15510e8bbe0b0', 960, 1337, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v6rconqlb03i1.jpeg', 'https://preview.redd.it/v6rconqlb03i1.jpeg?width=960&auto=webp&s=4e59205a9aa0d04b8118f5a1241b97b9d4acf26f', 960, 1475, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/urt3hhvlb03i1.jpeg', NULL, NULL, NULL, 5, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y23k3l'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/hJYunCcodQU-SXqSqt04smBd3tc9VEeLNOE2CtssLCg.jpeg?format=pjpg&auto=webp&s=87582c5136cdd2281b140b7c81b0bd32b5c9c68c', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y24ldx'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ghwaizqf613i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nahstyqf613i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dtwt9zqf613i1.jpeg', 'https://preview.redd.it/dtwt9zqf613i1.jpeg?width=960&auto=webp&s=621c77013ae8cccd1955b280a9aab0606f9cce78', 960, 960, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xlcmvzqf613i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y2b421rf613i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9i2fg0rf613i1.jpeg', 'https://preview.redd.it/9i2fg0rf613i1.jpeg?width=960&auto=webp&s=4cc736ac593c7e900d42bf659fc2df79ea3f392c', 960, 960, 5, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/amegwyqf613i1.jpeg', NULL, NULL, NULL, 6, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vxb9eyqf613i1.jpeg', NULL, NULL, NULL, 7, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3fa1vzqf613i1.jpeg', NULL, NULL, NULL, 8, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27k3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/841wn4v7813i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5gpp16v7813i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9okt32v7813i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j9ebbzu7813i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y27sus'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cni3aehyn13i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gtehsdhyn13i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t4anedhyn13i1.jpeg', NULL, NULL, NULL, 2, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y7d8jehyn13i1.jpeg', NULL, NULL, NULL, 3, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/78nilehyn13i1.jpeg', NULL, NULL, NULL, 4, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29pwr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d5kyxea0p13i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y29tdd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1xjd6xeaq13i1.jpeg', NULL, NULL, NULL, 0, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nfnnoyeaq13i1.jpeg', NULL, NULL, NULL, 1, '2026-11-22 02:35:52', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y2a1yw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
