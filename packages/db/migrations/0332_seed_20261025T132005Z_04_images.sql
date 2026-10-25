-- 0332_seed_20261025T132005Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T13:20:37.183980+00:00
-- Run started: 2026-10-25T13:20:05.680785+00:00
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
SELECT p.id, 'https://preview.redd.it/miuqno6u0xwh1.jpeg?width=250&format=pjpg&auto=webp&s=efdc8c49c2ad5cbc3c3e98a512933eacf62b7e82', NULL, NULL, NULL, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qlmf2o6u0xwh1.jpeg?width=452&format=pjpg&auto=webp&s=0f30c2ee853048aa1376f78ac53e3e4ddde78edd', NULL, NULL, NULL, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xc4gh2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zy2leamcqbxh1.jpeg', 'https://cf.preview.redd.it/zy2leamcqbxh1.jpeg?width=960&auto=webp&s=fd1a4361371dcbd84b3fff63b3cbd619c9cba0ac', 960, 1706, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdwobn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p4amnf1r1cxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxxal48r1cxh1.jpeg', NULL, NULL, NULL, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nr8n5rhr1cxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xdz6b8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dwr9b5frsdxh1.jpeg', 'https://preview.redd.it/dwr9b5frsdxh1.jpeg?width=960&auto=webp&s=661d3167e17f916562fbbc27d7470f44ac906eb3', 960, 960, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l6mif6frsdxh1.jpeg', 'https://preview.redd.it/l6mif6frsdxh1.jpeg?width=960&auto=webp&s=9850f291df6034e2092aaae653ce6433c0ebc3a6', 960, 960, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o4n9kafrsdxh1.jpeg', 'https://preview.redd.it/o4n9kafrsdxh1.jpeg?width=960&auto=webp&s=ba18179f01d2a16c75d3364fef98ee0c744b5577', 960, 960, 2, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2rgjp5frsdxh1.jpeg', 'https://preview.redd.it/2rgjp5frsdxh1.jpeg?width=960&auto=webp&s=4d670118f76831a4018477a7fbb70e264676a337', 960, 960, 3, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3hg9z4frsdxh1.jpeg', 'https://preview.redd.it/3hg9z4frsdxh1.jpeg?width=960&auto=webp&s=b7b0f00ad26aa879b4d52fba2cab90aea1a22718', 960, 960, 4, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/txi7i8frsdxh1.jpeg', 'https://preview.redd.it/txi7i8frsdxh1.jpeg?width=960&auto=webp&s=e98d6bca977a259e9467b1830b8ec6008e8cb7d6', 960, 960, 5, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/atpxr8frsdxh1.jpeg', 'https://preview.redd.it/atpxr8frsdxh1.jpeg?width=960&auto=webp&s=5a8db260dfcf073127e3699699b2c9032f7ea63f', 960, 960, 6, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7cfvgafrsdxh1.jpeg', 'https://preview.redd.it/7cfvgafrsdxh1.jpeg?width=960&auto=webp&s=7654df0fd2efa3a8435a3a18a9f0d61c6a2ebf56', 960, 960, 7, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe3wvn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zijfvxzszdxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4ka5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qu8v6qzt3exh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xkgyif3u3exh1.jpeg', NULL, NULL, NULL, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tov1bv5u3exh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xcspil7u3exh1.jpeg', NULL, NULL, NULL, 3, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/57gxt49u3exh1.jpeg', NULL, NULL, NULL, 4, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gqbixtau3exh1.jpeg', NULL, NULL, NULL, 5, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3azch8du3exh1.jpeg', NULL, NULL, NULL, 6, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rtzv2ueu3exh1.jpeg', NULL, NULL, NULL, 7, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tu43kggu3exh1.jpeg', NULL, NULL, NULL, 8, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s6h4t1iu3exh1.jpeg', NULL, NULL, NULL, 9, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe4x2a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/skv7se8v9exh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/byq1ek8v9exh1.jpeg', 'https://preview.redd.it/byq1ek8v9exh1.jpeg?width=960&auto=webp&s=1ff976daa5e5952600d7cbe212e4fcd31d47768b', 960, 706, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nnl2yf8v9exh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w5fotg8v9exh1.jpeg', NULL, NULL, NULL, 3, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aj2fpi8v9exh1.jpeg', NULL, NULL, NULL, 4, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qgmx1d8v9exh1.jpeg', NULL, NULL, NULL, 5, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n8gz2j8v9exh1.jpeg', NULL, NULL, NULL, 6, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5gwg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/grp4v3eeaexh1.jpeg', 'https://preview.redd.it/grp4v3eeaexh1.jpeg?width=960&auto=webp&s=c398c1acda1f3c28a71673c8733e31812e198610', 960, 706, 0, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r823kwdeaexh1.jpeg', NULL, NULL, NULL, 1, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r6edc0eeaexh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h1lkoydeaexh1.jpeg', NULL, NULL, NULL, 3, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ztoizdeaexh1.jpeg', NULL, NULL, NULL, 4, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s2rey2eeaexh1.jpeg', NULL, NULL, NULL, 5, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rukm92eeaexh1.jpeg', NULL, NULL, NULL, 6, '2026-10-25 13:20:37', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xe5io6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
