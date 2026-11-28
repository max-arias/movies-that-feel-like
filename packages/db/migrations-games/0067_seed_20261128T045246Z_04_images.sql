-- 0067_seed_20261128T045246Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T04:52:47.904902+00:00
-- Run started: 2026-11-28T04:52:46.079363+00:00
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
SELECT p.id, 'https://i.redd.it/9dyr4p9kgt1i1.png', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2am4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mv7e0xwkgt1i1.png', 'https://preview.redd.it/mv7e0xwkgt1i1.png?width=960&auto=webp&s=c410b29c061b3a8026a1df47da28d18ce8232c9f', 960, 600, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2am4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/at3lzke8ut1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/077n29i8ut1i1.jpeg', 'https://preview.redd.it/077n29i8ut1i1.jpeg?width=960&auto=webp&s=0b062f16b01c218a818a6e8ca801cd51aa5333c9', 960, 576, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/na7hxum8ut1i1.jpeg', 'https://preview.redd.it/na7hxum8ut1i1.jpeg?width=960&auto=webp&s=10cbd4d779d386e99400da8b14d49acdbee88ead', 960, 540, 2, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/muprr7t8ut1i1.jpeg', 'https://preview.redd.it/muprr7t8ut1i1.jpeg?width=960&auto=webp&s=446a95ea0185286473d67123ebc3e201ae21bb50', 960, 1282, 3, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s4o0yhy8ut1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b1nuxf09ut1i1.jpeg', 'https://preview.redd.it/b1nuxf09ut1i1.jpeg?width=960&auto=webp&s=89d90d783faac0ab74d0750874aea515cf513344', 960, 539, 5, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wo34jd49ut1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zoyx5v69ut1i1.png', NULL, NULL, NULL, 7, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx47bh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7u1eus6nau1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6h00'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h7zrvq6nau1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6h00'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5vs7pvisbu1i1.png', 'https://preview.redd.it/5vs7pvisbu1i1.png?width=960&auto=webp&s=69beff97bb3e765da4fd7e2edff470818ff5c9e7', 960, 470, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx6mms'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9itha42l2v1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxa3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xjykohki4v1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxabqv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/umvbo9ox4v1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxafen'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bl3l5bzjs14i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6fkzm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jp1n1he3g24i1.jpeg', 'https://preview.redd.it/jp1n1he3g24i1.jpeg?width=960&auto=webp&s=cbc70579660f5ed71beaa49fbc52c93734113639', 960, 960, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hz8m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kms7t9omf44i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6oskt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c3l9vlhkb54i1.png', 'https://preview.redd.it/c3l9vlhkb54i1.png?width=960&auto=webp&s=2047df6f55fd685bccea3d578ed405f19d3ed431', 960, 640, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yjv2wz3zb54i1.png', 'https://preview.redd.it/yjv2wz3zb54i1.png?width=960&auto=webp&s=1c71a0a986763f359d9d846ad0d3cd82d3b17ee7', 960, 623, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugtj42ljc54i1.png', 'https://preview.redd.it/ugtj42ljc54i1.png?width=960&auto=webp&s=c80641feb380671b2315b0444ffe1a635535e858', 960, 685, 2, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j2xspb4rc54i1.png', NULL, NULL, NULL, 3, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4rn3zsgzc54i1.png', 'https://preview.redd.it/4rn3zsgzc54i1.png?width=960&auto=webp&s=f189b4cf50f70a5b3cbee03dc9d4e0ca3d76a1cb', 960, 640, 4, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/in83va07d54i1.png', 'https://preview.redd.it/in83va07d54i1.png?width=960&auto=webp&s=37a09f5af735fc35e796c76fbc16b473ed46eb75', 960, 650, 5, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/natnbrv8d54i1.png', 'https://preview.redd.it/natnbrv8d54i1.png?width=960&auto=webp&s=e65755f5e240b3631cbc699becc89fb4842925d9', 960, 960, 6, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mvzg6cpad54i1.png', NULL, NULL, NULL, 7, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6rwew'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bzshjft2g64i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wljb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w3zncbmwh64i1.gif', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6wwga'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7yd74tfqo64i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6xs3o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/snpnn9sx374i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cuf7d0e0474i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vy8k8b01474i1.jpeg', 'https://preview.redd.it/vy8k8b01474i1.jpeg?width=960&auto=webp&s=a73252d552f83d99dbca6f5100cd91fcb53bf3fb', 960, 638, 2, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/akf1ylk2474i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6zwjj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kx1p1a65q74i1.jpeg', 'https://preview.redd.it/kx1p1a65q74i1.jpeg?width=960&auto=webp&s=f7de7e0d4510cf62033575545c08a8aeb11bc1af', 960, 540, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zy2fybb5q74i1.jpeg', 'https://preview.redd.it/zy2fybb5q74i1.jpeg?width=960&auto=webp&s=6b359339b50bd490ded5787277ee9975f433308e', 960, 540, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g0g0t7d5q74i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p1yefue5q74i1.png', 'https://preview.redd.it/p1yefue5q74i1.png?width=960&auto=webp&s=8083356bc56cbb7d9f0e10a081a068bfdbcc2b3e', 960, 960, 3, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5sufaxj5q74i1.jpeg', 'https://preview.redd.it/5sufaxj5q74i1.jpeg?width=960&auto=webp&s=3dbd880ecb4a00b1d29c3297935a66cc9679af8d', 960, 720, 4, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72udf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kms7t9omf44i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73c4u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1syuw9cte84i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75zes'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/au8321jte84i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75zes'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tszrfunte84i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75zes'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MW1jODc4ZnVtODRpMSlxh33HRqRJQ73hy52qo9yTfloqTSPEvcC1zUMgl0PK.png?format=pjpg&auto=webp&s=061f3149d20019f82431b2f1d494f2878f9a48a7', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y76ykt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aneiufp3p84i1.png', NULL, NULL, NULL, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y779g7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5tkwag13o84i1.jpeg', 'https://preview.redd.it/5tkwag13o84i1.jpeg?width=960&auto=webp&s=2c2884966caef180d23952701c3a2507971d71c1', 960, 423, 0, '2026-11-28 04:52:47', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y77afv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
