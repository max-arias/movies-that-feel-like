-- 0418_seed_20261121T032831Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T03:29:05.704638+00:00
-- Run started: 2026-11-21T03:28:31.132963+00:00
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
SELECT p.id, 'https://i.redd.it/9xrcr027rq2i1.jpeg', 'https://preview.redd.it/9xrcr027rq2i1.jpeg?width=960&auto=webp&s=6e2d91c7e1e15b39eea72dbc023ba409bb62949e', 960, 540, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0zpw7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q5cysm3d2r2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/50i6ka5d2r2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ha3ixs6d2r2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/viwzp58d2r2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/czb9xd9d2r2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y10q4x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uu701a35ur2i1.jpeg', 'https://preview.redd.it/uu701a35ur2i1.jpeg?width=960&auto=webp&s=f5402363abb0f50d95af35e3e009302fa8770d8b', 960, 1200, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tx4349s5ur2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bf9ypix5ur2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sfg2pg66ur2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13rrq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hmiap8qevr2i1.jpeg', 'https://preview.redd.it/hmiap8qevr2i1.jpeg?width=960&auto=webp&s=282dcc7549bf207a7220dc9fe17248f53aa2634d', 960, 720, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y13yci'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yfcnnoevwr2i1.jpeg', 'https://preview.redd.it/yfcnnoevwr2i1.jpeg?width=960&auto=webp&s=9c354930b725eb87a99680e3777bd99e0ad939eb', 960, 651, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tpyc1mevwr2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6btrdlevwr2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q13eklevwr2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1445j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6uc5ud5h4s2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zyqoj5bh4s2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ujmlqidh4s2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m923a1ih4s2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lkd134lh4s2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y15542'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hbzdb7icds2i1.png', 'https://preview.redd.it/hbzdb7icds2i1.png?width=960&auto=webp&s=1257f32f31ab9a1b6263c379c4ddca0b27dc98e9', 960, 576, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1haqd9icds2i1.png', 'https://preview.redd.it/1haqd9icds2i1.png?width=960&auto=webp&s=1dbb88cc68cf3b174c41d5275bbe135cc8ae789d', 960, 576, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ny5te8icds2i1.png', 'https://preview.redd.it/ny5te8icds2i1.png?width=960&auto=webp&s=d49262655ea034ce3d15a0bdc0af328d0128ea6c', 960, 576, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j8g9u7icds2i1.png', 'https://preview.redd.it/j8g9u7icds2i1.png?width=960&auto=webp&s=2a1280acc39831a0888059aeb703cdc92742954f', 960, 576, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16dvo'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wn5oczfzds2i1.png', 'https://preview.redd.it/wn5oczfzds2i1.png?width=960&auto=webp&s=2b4382e97d4859272dfe6f0d32ce12463f81cfa4', 960, 576, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x0zs3yfzds2i1.png', 'https://preview.redd.it/x0zs3yfzds2i1.png?width=960&auto=webp&s=9a2f416e2861bfe2d630a496740a97b1691b1576', 960, 576, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9jyeryfzds2i1.png', 'https://preview.redd.it/9jyeryfzds2i1.png?width=960&auto=webp&s=b952dbe243c60d53ce691a0f9f75b4e209ae5574', 960, 576, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qs9acyfzds2i1.png', 'https://preview.redd.it/qs9acyfzds2i1.png?width=960&auto=webp&s=4b2aaaf732d06f9314e9d84fd00a7419963db232', 960, 576, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y16hbp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/avifq5hm1t2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1a03p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7p9qauve6t2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ajnd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y8jvxwn4ct2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l4z4fes4ct2i1.jpeg', 'https://preview.redd.it/l4z4fes4ct2i1.jpeg?width=960&auto=webp&s=1b3ec6be9faca8b1b1b24dce34a92e897722c82d', 960, 540, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/akzmwrz4ct2i1.jpeg', 'https://preview.redd.it/akzmwrz4ct2i1.jpeg?width=960&auto=webp&s=67373e487e6790d25f37b8e420ae7104dd9485c7', 960, 551, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3xcowp55ct2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mst09z75ct2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1bd9z'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/30ycv39bot2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aketwqbbot2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oircx5ebot2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3m0ijlgbot2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sl19t9jbot2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dq0tumkbot2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rmu4y0mbot2i1.jpeg', 'https://cf.preview.redd.it/rmu4y0mbot2i1.jpeg?width=960&auto=webp&s=acc2a6fceda131fa7a33d734544cd584f310e66f', 960, 1253, 6, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lu5alasbot2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wmp7jitbot2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nputouubot2i1.jpeg', 'https://cf.preview.redd.it/nputouubot2i1.jpeg?width=960&auto=webp&s=b5735e53c61b1b0f875851a361db04b9fa6d2356', 960, 1152, 9, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/48s5otwbot2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hlzwg7ybot2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1d2t4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xgrepb337u2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1pd39d337u2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rqrl7d337u2i1.jpeg', 'https://preview.redd.it/rqrl7d337u2i1.jpeg?width=960&auto=webp&s=788379281345cbae3f9c028bd3a9898fbce9165b', 960, 1440, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6mypde337u2i1.jpeg', 'https://preview.redd.it/6mypde337u2i1.jpeg?width=960&auto=webp&s=3c55605917c23af2f70e04e736bf523e720ea773', 960, 817, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ntkogc337u2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3wx15f337u2i1.jpeg', 'https://preview.redd.it/3wx15f337u2i1.jpeg?width=960&auto=webp&s=61e6f0162af091af447ba9be26fc982e9af0050c', 960, 1167, 5, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/spq3we337u2i1.jpeg', 'https://preview.redd.it/spq3we337u2i1.jpeg?width=960&auto=webp&s=38e36f1b30a601889a128f0eb80bfe899c9db21c', 960, 1375, 6, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mlel9d337u2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zk93fe337u2i1.jpeg', 'https://preview.redd.it/zk93fe337u2i1.jpeg?width=960&auto=webp&s=778ddeae7bf679cb52e465e894fdd8ef69cf446b', 960, 536, 8, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1flrj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mdw4wvt28u2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/clmxrgw28u2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5a5u1py28u2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kgr7h3038u2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0vldxh138u2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d7ytvw238u2i1.jpeg', 'https://preview.redd.it/d7ytvw238u2i1.jpeg?width=960&auto=webp&s=ea2ac952eac9184d223bd62da2c1f83f5bce8f88', 960, 1253, 5, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g7mjiv738u2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wyuhx8938u2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nyspaja38u2i1.jpeg', 'https://preview.redd.it/nyspaja38u2i1.jpeg?width=960&auto=webp&s=f74beaa23baa79ffa2388be6eb2c07e588cfdde2', 960, 1152, 8, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hj529lc38u2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1fqd6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/49xk45bzau2i1.png', 'https://preview.redd.it/49xk45bzau2i1.png?width=960&auto=webp&s=db7a5c8c5084e8738f4662f51952219d048259f4', 960, 720, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/np2el4bzau2i1.png', 'https://preview.redd.it/np2el4bzau2i1.png?width=960&auto=webp&s=2d399db1a70d12acf0288f8f202782a595ab5789', 960, 720, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ebjy85bzau2i1.png', 'https://preview.redd.it/ebjy85bzau2i1.png?width=960&auto=webp&s=7964ad7e6dd66126fa3120df4177cd90599e94d1', 960, 720, 2, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t70b75bzau2i1.png', 'https://preview.redd.it/t70b75bzau2i1.png?width=960&auto=webp&s=6245a1d90462e63a8b7f0294c7bb47a18648861d', 960, 720, 3, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1g6tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lzlhfylglu2i1.jpeg', 'https://preview.redd.it/lzlhfylglu2i1.jpeg?width=960&auto=webp&s=5828aa51e70d3fddecd38c36733428f8ce898ebd', 960, 777, 0, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vbz2tnpglu2i1.jpeg', 'https://preview.redd.it/vbz2tnpglu2i1.jpeg?width=960&auto=webp&s=68033c2a6cd3729f2ac081966c831af00e2478da', 960, 626, 1, '2026-11-21 03:29:05', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1hfvv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
