-- 0327_seed_20261025T045744Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-25T04:58:10.244871+00:00
-- Run started: 2026-10-25T04:57:44.646201+00:00
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
SELECT p.id, 'https://i.redd.it/iqaq362qmfxh1.jpeg', 'https://preview.redd.it/iqaq362qmfxh1.jpeg?width=960&auto=webp&s=ec2e5b1ccd34de1ef7e8d4fdf39d8340d9de0c2a', 960, 1440, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hqcyhbkrmfxh1.jpeg', NULL, NULL, NULL, 1, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n5fb56ytmfxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xebdsy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z5bwwlkowfxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kg4gd6qowfxh1.jpeg', NULL, NULL, NULL, 1, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lx30uwtowfxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r83ydbyowfxh1.jpeg', NULL, NULL, NULL, 3, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xecovq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d1f1tqnxrgxh1.jpeg', 'https://preview.redd.it/d1f1tqnxrgxh1.jpeg?width=960&auto=webp&s=6c2a8b01359c4d7766de622c06679670c1dc4d5c', 960, 1265, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/64maarnxrgxh1.jpeg', 'https://preview.redd.it/64maarnxrgxh1.jpeg?width=960&auto=webp&s=800a49c2c83fbaa1a328cc7136e7fd8bab399ca0', 960, 1275, 1, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0oghcrnxrgxh1.jpeg', 'https://preview.redd.it/0oghcrnxrgxh1.jpeg?width=960&auto=webp&s=6dd677e89afd7c775fe7d22b22f85c08ca7a2d19', 960, 934, 2, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m3usornxrgxh1.jpeg', 'https://preview.redd.it/m3usornxrgxh1.jpeg?width=960&auto=webp&s=798d93865a4bfee5a2bd1b7b1c5bfd348b32c4b9', 960, 1592, 3, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bzy7rrnxrgxh1.jpeg', 'https://preview.redd.it/bzy7rrnxrgxh1.jpeg?width=960&auto=webp&s=3c6f9a7d2dcad385b8972af0ee9f0729906d3328', 960, 1604, 4, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xeh2fd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d8wulllb9hxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xejgia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o0clkunb9hxh1.jpeg', 'https://preview.redd.it/o0clkunb9hxh1.jpeg?width=960&auto=webp&s=dccbb03e8c4ae9f86d9c3b7a1f085e19aa7c56ab', 960, 1422, 1, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xejgia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mnjs2jlb9hxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xejgia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/whbg8ddufhxh1.jpeg', 'https://preview.redd.it/whbg8ddufhxh1.jpeg?width=960&auto=webp&s=6e14626e6b60fecd3f59615447b734a46fa2cf18', 960, 656, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xekac2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c5mirjc0qhxh1.jpeg', 'https://preview.redd.it/c5mirjc0qhxh1.jpeg?width=960&auto=webp&s=2ab0381b2078e8a22a2024aa7a0ef977d7f45559', 960, 1023, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/btteilc0qhxh1.jpeg', 'https://preview.redd.it/btteilc0qhxh1.jpeg?width=960&auto=webp&s=3cf36c221d54ac8e818f67dd9bb8035a9fede1d0', 960, 954, 1, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1uupnic0qhxh1.jpeg', 'https://preview.redd.it/1uupnic0qhxh1.jpeg?width=960&auto=webp&s=f9ab334b8d81c8fd00311db19f3236a9df6fa6fb', 960, 927, 2, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/34wr6kc0qhxh1.jpeg', 'https://preview.redd.it/34wr6kc0qhxh1.jpeg?width=960&auto=webp&s=8c42ce0ad3ace19596a8f579e9f9209ee2133b34', 960, 904, 3, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jore5jc0qhxh1.jpeg', 'https://preview.redd.it/jore5jc0qhxh1.jpeg?width=960&auto=webp&s=a4c4b88f3a4baf5353f5ba2848658e077d34ea6d', 960, 919, 4, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9w67ric0qhxh1.jpeg', 'https://preview.redd.it/9w67ric0qhxh1.jpeg?width=960&auto=webp&s=157045e0405734763007dbf91853923f90a904c7', 960, 939, 5, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5enaekc0qhxh1.jpeg', 'https://preview.redd.it/5enaekc0qhxh1.jpeg?width=960&auto=webp&s=ca0d8ad7706ed39fb83ed5f7f2024b25c480f8a6', 960, 905, 6, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g68xdjc0qhxh1.jpeg', 'https://preview.redd.it/g68xdjc0qhxh1.jpeg?width=960&auto=webp&s=6ca94c155101e82b0caaddefed9d5d06c920de26', 960, 812, 7, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7jklrkc0qhxh1.jpeg', 'https://preview.redd.it/7jklrkc0qhxh1.jpeg?width=960&auto=webp&s=0f215ede21247f62fdae02c07a815fdfe50491d7', 960, 964, 8, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h5qd2oc0qhxh1.jpeg', 'https://preview.redd.it/h5qd2oc0qhxh1.jpeg?width=960&auto=webp&s=3c839962ba44df320adb9a94924eed4ee05844f9', 960, 938, 9, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u9kfnjc0qhxh1.jpeg', 'https://preview.redd.it/u9kfnjc0qhxh1.jpeg?width=960&auto=webp&s=62ffda9f33b7a77f5ec1e4560b1f8e7c3d9270d9', 960, 643, 10, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f4hpskc0qhxh1.jpeg', 'https://preview.redd.it/f4hpskc0qhxh1.jpeg?width=960&auto=webp&s=aad0fbf1ce026c32cb5839ab178c6568f479f6bd', 960, 633, 11, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ns81gkc0qhxh1.jpeg', 'https://preview.redd.it/ns81gkc0qhxh1.jpeg?width=960&auto=webp&s=cd636c9a77fe404b4b50f1b2539e25e6c1fae1ee', 960, 826, 12, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/74bbelc0qhxh1.jpeg', 'https://preview.redd.it/74bbelc0qhxh1.jpeg?width=960&auto=webp&s=896e6d0e59a720ae14c8856defc3e9d918c6c8b4', 960, 968, 13, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wk5qpkc0qhxh1.jpeg', 'https://preview.redd.it/wk5qpkc0qhxh1.jpeg?width=960&auto=webp&s=5e2c04f9277afdc9f2a525e45630fa34fdf5df13', 960, 673, 14, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qbzo5lc0qhxh1.jpeg', 'https://preview.redd.it/qbzo5lc0qhxh1.jpeg?width=960&auto=webp&s=2d494495c3119d4c90db3ae483809e6c5dfb2c7f', 960, 864, 15, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ahhcqnc0qhxh1.jpeg', 'https://preview.redd.it/ahhcqnc0qhxh1.jpeg?width=960&auto=webp&s=c78ffc433e1714515235fb86b63989592b06fe2a', 960, 678, 16, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3boc4lc0qhxh1.jpeg', 'https://preview.redd.it/3boc4lc0qhxh1.jpeg?width=960&auto=webp&s=39cbc873580d1b3b58e67b71145ccb6c1f579008', 960, 960, 17, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0kevglc0qhxh1.jpeg', 'https://preview.redd.it/0kevglc0qhxh1.jpeg?width=960&auto=webp&s=ea502c653b5b053673067516618481e62f405603', 960, 909, 18, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/omyy4kc0qhxh1.jpeg', NULL, NULL, NULL, 19, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xelkjm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hbaiogkmzhxh1.jpeg', 'https://preview.redd.it/hbaiogkmzhxh1.jpeg?width=960&auto=webp&s=bea47737a02abaf6070015760b85c3ee3d27fb46', 960, 1200, 0, '2026-10-25 04:58:10', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xempmw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
