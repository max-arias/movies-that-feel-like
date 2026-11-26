-- 0057_seed_20261126T235216Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T23:52:17.494472+00:00
-- Run started: 2026-11-26T23:52:16.364945+00:00
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
SELECT p.id, 'https://i.redd.it/9y44upj0ev1i1.jpeg', 'https://preview.redd.it/9y44upj0ev1i1.jpeg?width=960&auto=webp&s=9503c7f241d6cc0eb78f91f8aa54855369e0bd7b', 960, 487, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nsyb3qj0ev1i1.jpeg', 'https://preview.redd.it/nsyb3qj0ev1i1.jpeg?width=960&auto=webp&s=f605bd3840d522234ce7ab23fc2f3f7ee38f66da', 960, 1357, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbici'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y4im45zplv1i1.jpeg', 'https://preview.redd.it/y4im45zplv1i1.jpeg?width=960&auto=webp&s=3d9dc771ae66265bac920d427788ebefc4399d84', 960, 693, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/em443dbqlv1i1.jpeg', 'https://preview.redd.it/em443dbqlv1i1.jpeg?width=960&auto=webp&s=e9d402f0c8f2ca3fc6df0cc7d4edb9f50d0e0264', 960, 576, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5j7huinqlv1i1.jpeg', 'https://preview.redd.it/5j7huinqlv1i1.jpeg?width=960&auto=webp&s=3d64f1c9dbe0ef285874fa6fb936b1ada282ea23', 960, 613, 2, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5h8fmmyqlv1i1.jpeg', 'https://preview.redd.it/5h8fmmyqlv1i1.jpeg?width=960&auto=webp&s=588a40ac1ce545f9b41eb3439958a21000da5256', 960, 544, 3, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iuk88t6rlv1i1.jpeg', 'https://preview.redd.it/iuk88t6rlv1i1.jpeg?width=960&auto=webp&s=d746859d8be06121733158eba65ce7dc3eaeb72c', 960, 533, 4, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/svaxbsgrlv1i1.jpeg', 'https://preview.redd.it/svaxbsgrlv1i1.jpeg?width=960&auto=webp&s=c4ef11a24c7e7d47ae739578591f5ffaf8162ffe', 960, 1201, 5, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcebg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qgjzvv2snv1i1.png', 'https://preview.redd.it/qgjzvv2snv1i1.png?width=960&auto=webp&s=abcc54537526a03afef810a133eec2a724d13266', 960, 540, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xh2tpsewnv1i1.png', 'https://preview.redd.it/xh2tpsewnv1i1.png?width=960&auto=webp&s=0a6874668c48dc7f0b86cb5183d914387c136ab9', 960, 648, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hd116gp7ov1i1.png', 'https://preview.redd.it/hd116gp7ov1i1.png?width=960&auto=webp&s=d3e46ebc72c52f59928d56f8e931a3197caae673', 960, 540, 2, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oziikolcov1i1.png', 'https://preview.redd.it/oziikolcov1i1.png?width=960&auto=webp&s=e259a1b6bdfbae733cdc9a532b05a8e97e1cec8a', 960, 540, 3, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mvc7xpjjov1i1.png', 'https://preview.redd.it/mvc7xpjjov1i1.png?width=960&auto=webp&s=378ac9ef85f57782a54d9e5249484375e7adb928', 960, 540, 4, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcr6w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uqu99cl7pv1i1.gif', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxctec'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n9qlm984wv1i1.jpeg', 'https://preview.redd.it/n9qlm984wv1i1.jpeg?width=960&auto=webp&s=d5a0fc0ad8eaa3ae9ca02a6c96b057c853d5adbd', 960, 1146, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdl8y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tu0q3hrvxv1i1.png', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdwd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2v0ous65yv1i1.png', 'https://preview.redd.it/2v0ous65yv1i1.png?width=960&auto=webp&s=52e4b8459e1081b6d0519867accb60ab176e3b75', 960, 540, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdwd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zrw5h2t7yv1i1.png', 'https://preview.redd.it/zrw5h2t7yv1i1.png?width=960&auto=webp&s=9013f3365494e73c1a3f128bb9ff9bdfc276d8b8', 960, 540, 2, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxdwd8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/359i64pi8w1i1.jpeg', 'https://preview.redd.it/359i64pi8w1i1.jpeg?width=960&auto=webp&s=40347ae6ef075bdbefd1505a3b3f5bea2c51f881', 960, 540, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxeyn0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0xe2ggri8w1i1.jpeg', 'https://preview.redd.it/0xe2ggri8w1i1.jpeg?width=960&auto=webp&s=2fe06dca8d726b8432f576bf7a615b860c764265', 960, 540, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxeyn0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gzj82dwdbw1i1.jpeg', 'https://preview.redd.it/gzj82dwdbw1i1.jpeg?width=960&auto=webp&s=b1147c3855a8c1afa131819ad9cacd544e662f23', 960, 1412, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxf9ia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hbmo2cwdbw1i1.jpeg', 'https://preview.redd.it/hbmo2cwdbw1i1.jpeg?width=960&auto=webp&s=babf17dd7cdd41cf906be8be406afdc2d8b33772', 960, 1368, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxf9ia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rpgyxhxztw1i1.jpeg', 'https://preview.redd.it/rpgyxhxztw1i1.jpeg?width=960&auto=webp&s=d18143078ccec37ceabc4402d9e45a17705c28cb', 960, 544, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxh6ob'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jzsyrrqwyw1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/62mlfrqwyw1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yvoewrqwyw1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxhns3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/339eqk3zgg3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2iequbnzgg3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z555'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ami0c2zwog3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y402hs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1cz2m9xvfh3i1.jpeg', 'https://preview.redd.it/1cz2m9xvfh3i1.jpeg?width=960&auto=webp&s=1c1f4390b817e25cd9353991e2946ddcf9f428ef', 960, 528, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y436mu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dnjkajzh1l3i1.png', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gv3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xmmpenrp1l3i1.png', 'https://preview.redd.it/xmmpenrp1l3i1.png?width=960&auto=webp&s=22a5122eee0587be65e31b2f8fbfa608090d48b6', 960, 540, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gv3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dvyzttvr4l3i1.png', 'https://preview.redd.it/dvyzttvr4l3i1.png?width=960&auto=webp&s=cab9f4be312a25decaa50493a847e8f134b31d42', 960, 338, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4hdkb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0x3ho4ts4l3i1.png', 'https://preview.redd.it/0x3ho4ts4l3i1.png?width=960&auto=webp&s=9859b24a8ce1c55400f33ef001f46db2f84cf220', 960, 540, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4hdkb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k9v8hu58wl3i1.png', 'https://cf.preview.redd.it/k9v8hu58wl3i1.png?width=960&auto=webp&s=20f0d69522597177fb46f0403d0332f84fb524ef', 960, 540, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4lb8y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ik1a96za4m3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mhln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h70k495c4m3i1.jpeg', 'https://preview.redd.it/h70k495c4m3i1.jpeg?width=960&auto=webp&s=20abfbcaab7a6ef599ce72e3a1240ca60e30c182', 960, 540, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4mhln'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/77mpzwmfqm3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4pl3z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yrah2tcign3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sz8p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n825ercign3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sz8p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/adn13anjgn3i1.jpeg', 'https://preview.redd.it/adn13anjgn3i1.jpeg?width=960&auto=webp&s=271492b361c76a32a4c58f3bc06783bb9a3fdb1b', 960, 540, 2, '2026-11-26 23:52:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4sz8p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
