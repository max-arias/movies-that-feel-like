-- 0202_seed_20261011T055853Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-11T05:59:18.769750+00:00
-- Run started: 2026-10-11T05:58:53.633384+00:00
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
SELECT p.id, 'https://i.redd.it/d0ek517o9luh1.jpeg', 'https://preview.redd.it/d0ek517o9luh1.jpeg?width=960&crop=smart&auto=webp&s=0d8ab63474c21cc29f3c3a1ee153a840f8719592', 960, 427, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x28ojl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MFXB68AUriGvKTXhPtxsI876gSNFG8JZuB2idxphjp0.jpeg?auto=webp&s=6dc7104f0953e7996f4f5b223e284a3b036fcaa2', NULL, NULL, NULL, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2h3wb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5ke0h563wnuh1.png', 'https://preview.redd.it/5ke0h563wnuh1.png?width=960&crop=smart&auto=webp&s=05e3b4136cb9fa45f5ff9d517a36f64a9713ed73', 960, 539, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2in7s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/51tcfd4e0ouh1.jpg?width=920&format=pjpg&auto=webp&s=273800c7d485567e70e5aaffc333b65272002653', NULL, NULL, NULL, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/q991sabe0ouh1.jpg?width=452&format=pjpg&auto=webp&s=31d1ba6e57fb0426e633e075c4c87f5271507f03', NULL, NULL, NULL, 1, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/lzorabfe0ouh1.jpg?width=590&format=pjpg&auto=webp&s=d429f2829aa12a8a4836e72bebcad84b6958447c', NULL, NULL, NULL, 2, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2j83s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ghdekr3i3ouh1.jpeg', 'https://preview.redd.it/ghdekr3i3ouh1.jpeg?width=960&crop=smart&auto=webp&s=13e86ee22e208c622df65afafbf6f0fbdd3ef63a', 960, 700, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2jn5a'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/BKdoxirHRcjye46FTb8anIVqmaakmBC33GRk0IOl5U4.jpeg?auto=webp&s=1cb014fc55c4a5fa82e961fa79ea401629f7c913', NULL, NULL, NULL, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2kovz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5qdxa2oceouh1.jpg?width=485&format=pjpg&auto=webp&s=14140ad0314a5b6672e80a6568fc621fe44d57f8', NULL, NULL, NULL, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3bindmqceouh1.jpg?width=736&format=pjpg&auto=webp&s=60203c03c9cab5f7d30d4d3958bbef332338215f', NULL, NULL, NULL, 1, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/oqip59uceouh1.jpg?width=640&format=pjpg&auto=webp&s=2f0acad87fb6f969d8faf31369321b97985267be', NULL, NULL, NULL, 2, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ckvoo7wceouh1.jpg?width=483&format=pjpg&auto=webp&s=19d2c1980a788d1d08c3f7b3e1647de1c2273b73', NULL, NULL, NULL, 3, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3zpteyxceouh1.jpg?width=469&format=pjpg&auto=webp&s=9e097b0fb6cd1c0af36527586f639466504211bc', NULL, NULL, NULL, 4, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2l3xz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ky5pmsnljouh1.jpg?width=1320&format=pjpg&auto=webp&s=c1777e572e44d68089a2a61d1e161f6593c25a3c', 'https://preview.redd.it/ky5pmsnljouh1.jpg?width=960&crop=smart&auto=webp&s=6196d6bd12402a755c2e075882f7e2decf3fed34', 960, 398, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/twaqqsnljouh1.jpg?width=1320&format=pjpg&auto=webp&s=9bdca3d610fff1449a7fb353899eae619fcb6e2b', 'https://preview.redd.it/twaqqsnljouh1.jpg?width=960&crop=smart&auto=webp&s=bc2afe04729cf9a8fab876bf56d7c345236e1eaa', 960, 408, 1, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u8d8htnljouh1.jpg?width=1320&format=pjpg&auto=webp&s=75fadf3dfd8d09c057f1fa378bd61180b0a6be4f', 'https://preview.redd.it/u8d8htnljouh1.jpg?width=960&crop=smart&auto=webp&s=41ed644c9c65331acd917869d6cddc669cf72956', 960, 386, 2, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jn76asnljouh1.jpg?width=1320&format=pjpg&auto=webp&s=e1bc6a47a0b2c75bd27efb6223500c062df9c48d', 'https://preview.redd.it/jn76asnljouh1.jpg?width=960&crop=smart&auto=webp&s=907433a0ba105efc93e7e78e3426fa040938cc10', 960, 402, 3, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dccpvtnljouh1.jpg?width=1320&format=pjpg&auto=webp&s=297c4eb81349820434d57a2f0a09f6da9ef94d71', 'https://preview.redd.it/dccpvtnljouh1.jpg?width=960&crop=smart&auto=webp&s=5d31d61387fcaac00db4245dc1975306dfc3deaf', 960, 396, 4, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2ltca'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yq1s2f4kepuh1.jpg?width=1439&format=pjpg&auto=webp&s=a5047168803c304134f64c0ee8d96d918d5f9db1', 'https://preview.redd.it/yq1s2f4kepuh1.jpg?width=960&crop=smart&auto=webp&s=7fc7e1ea9c8ddfc81e1d171d137bdda8bf810290', 960, 720, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7yflzy8kepuh1.jpg?width=1439&format=pjpg&auto=webp&s=fd9dbc1cd511c6dd207f686f1221ca038662bdba', 'https://preview.redd.it/7yflzy8kepuh1.jpg?width=960&crop=smart&auto=webp&s=619e48677e88cd83276de7d05f0db3c7a0eba9f8', 960, 720, 1, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ia3a49dkepuh1.jpg?width=1439&format=pjpg&auto=webp&s=7d69251b8f80a405fc47cec777521094cf057656', 'https://preview.redd.it/ia3a49dkepuh1.jpg?width=960&crop=smart&auto=webp&s=267e5cc98c8d6dc917801ae1034870907c94cc35', 960, 720, 2, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/w8erulhkepuh1.jpg?width=1439&format=pjpg&auto=webp&s=cdadcb5d32543031c5f92f211e6ae9166d06ee25', 'https://preview.redd.it/w8erulhkepuh1.jpg?width=960&crop=smart&auto=webp&s=c0a8de80cfb0b633bc5b8ffacf2093290cfe4230', 960, 720, 3, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l4szkgjkepuh1.jpg?width=1440&format=pjpg&auto=webp&s=9b90a2324216ab48021bd3fbcef98057de93f590', 'https://preview.redd.it/l4szkgjkepuh1.jpg?width=960&crop=smart&auto=webp&s=a5563de9ae9bc26528874f1da0f9160f7dac0ce8', 960, 720, 4, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/s2trdblkepuh1.jpg?width=1439&format=pjpg&auto=webp&s=4e41a04f266d1008d2a681f0ed952769176abaea', 'https://preview.redd.it/s2trdblkepuh1.jpg?width=960&crop=smart&auto=webp&s=2beb639e7dc2c2642946befa2c56ffccfd929ac8', 960, 720, 5, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hrxl94pkepuh1.jpg?width=1439&format=pjpg&auto=webp&s=16803df63462eacfdf9c4b4531488b28cc57ae75', 'https://preview.redd.it/hrxl94pkepuh1.jpg?width=960&crop=smart&auto=webp&s=4405f7864aa0e687681cedc75680ff6210855b94', 960, 720, 6, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yiw8rvqkepuh1.jpg?width=1439&format=pjpg&auto=webp&s=dedefc258cdaf35ab546c10a0bfebd279cb9bf7a', 'https://preview.redd.it/yiw8rvqkepuh1.jpg?width=960&crop=smart&auto=webp&s=4684192955f6fda144aa73eb5847f849883c3e98', 960, 720, 7, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2pwid'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/15yuw7uw2quh1.jpeg', 'https://preview.redd.it/15yuw7uw2quh1.jpeg?width=960&crop=smart&auto=webp&s=93801212d8178403562c91717b47a27c888ee709', 960, 960, 0, '2026-10-11 05:59:18', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x2sv34'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
