-- 0342_seed_20261027T205735Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-27T20:58:06.298670+00:00
-- Run started: 2026-10-27T20:57:35.822456+00:00
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
SELECT p.id, 'https://i.redd.it/g436yeyftqxh1.jpeg', 'https://preview.redd.it/g436yeyftqxh1.jpeg?width=960&auto=webp&s=01387a5e571e446e528992eada6effff4d4a5c8b', 960, 1279, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h9hdu04gtqxh1.jpeg', 'https://preview.redd.it/h9hdu04gtqxh1.jpeg?width=960&auto=webp&s=1d8da217e2b4a98558755f3649e63625eb96d012', 960, 1279, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wyo37u8gtqxh1.jpeg', 'https://preview.redd.it/wyo37u8gtqxh1.jpeg?width=960&auto=webp&s=32403caa45cae8ac4c45ffe6e02088400ff8a50a', 960, 1279, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/89ym5gdgtqxh1.jpeg', 'https://preview.redd.it/89ym5gdgtqxh1.jpeg?width=960&auto=webp&s=ab01b7104ac6e2e946dfd2da523c3e03d595d097', 960, 1279, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfnqce'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/49rt93mccrxh1.png', 'https://preview.redd.it/49rt93mccrxh1.png?width=960&auto=webp&s=09f9f767e98a2188fc9b510061031b9eb9127ea8', 960, 960, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kvilfsh8crxh1.png', NULL, NULL, NULL, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjql25pecrxh1.png', NULL, NULL, NULL, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l36q35ehcrxh1.png', NULL, NULL, NULL, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p3wvg47kcrxh1.png', 'https://preview.redd.it/p3wvg47kcrxh1.png?width=960&auto=webp&s=7f89517e3bbaff83ca67120dfcffa12e3eacd76c', 960, 1436, 4, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xym1jvhpcrxh1.png', NULL, NULL, NULL, 5, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0i5kypwvcrxh1.png', NULL, NULL, NULL, 6, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yf4opph5drxh1.png', NULL, NULL, NULL, 7, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mvgmrx67drxh1.png', NULL, NULL, NULL, 8, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfpmea'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jbjvc1lokrxh1.png', 'https://preview.redd.it/jbjvc1lokrxh1.png?width=960&auto=webp&s=c74594ee4887d5b4afa59351712e9f8e600246f1', 960, 540, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfq6za'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ave071peusxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/otbjbnseusxh1.png', 'https://preview.redd.it/otbjbnseusxh1.png?width=960&auto=webp&s=573f2ae564e9eb140a8c8d2552938410d1755078', 960, 722, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jalxo52fusxh1.png', 'https://preview.redd.it/jalxo52fusxh1.png?width=960&auto=webp&s=2252caaebcada35d2bfd1f674c9a4f55f5ab549e', 960, 722, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/plw8x7dfusxh1.jpeg', NULL, NULL, NULL, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfuihz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4rmu29210txh1.jpeg', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q2umjs510txh1.jpeg', NULL, NULL, NULL, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wu9jk9810txh1.jpeg', NULL, NULL, NULL, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iww4n3a10txh1.jpeg', NULL, NULL, NULL, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sy5zbnb10txh1.jpeg', NULL, NULL, NULL, 4, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfv5zn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/y39COQ6clLUnVse3rLs3oh1QCqlJ0VsPtnFmBdzpa94.jpeg?format=pjpg&auto=webp&s=05f9f70b0bf4c3920e50d2a88a45a52a6326af46', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfvpw9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0w0ssyvsptxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6fohcj3tptxh1.jpeg', NULL, NULL, NULL, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vo18bf8tptxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xfyp4s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l7i2nkx1ytxh1.jpeg', 'https://preview.redd.it/l7i2nkx1ytxh1.jpeg?width=960&auto=webp&s=a700ba301075e82c78fe56bd9cd5c3e4df98cd36', 960, 413, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg0l5v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/dmRvdjV0aXZxdXhoMUdsuuEPezn4N2kHLqOgqS3BFyyDd0QFsWXI9rDfW2k4.jpeg?format=pjpg&auto=webp&s=a547587996b521c0b543f0e46de76b038e32aeea', 'https://external-preview.redd.it/dmRvdjV0aXZxdXhoMUdsuuEPezn4N2kHLqOgqS3BFyyDd0QFsWXI9rDfW2k4.jpeg?width=960&format=pjpg&auto=webp&s=3b8b1733edaa44e60a1dc000b1c51ff2d0267051', 960, 2087, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4h47'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/li20ef73tuxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg4uqg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p44gm6cmuuxh1.jpeg', 'https://preview.redd.it/p44gm6cmuuxh1.jpeg?width=960&auto=webp&s=9f3045ec9ea6c3546aefed264f1153a3d9b37210', 960, 540, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg51ah'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/os2hyxl48vxh1.jpeg', 'https://preview.redd.it/os2hyxl48vxh1.jpeg?width=960&auto=webp&s=76014fdb2706b2afef929b271474afefe593ae95', 960, 661, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sognths48vxh1.jpeg', 'https://preview.redd.it/sognths48vxh1.jpeg?width=960&auto=webp&s=b1a8c4633cdabdb164e42b189beaa5860ff3987f', 960, 884, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7un7yn158vxh1.jpeg', NULL, NULL, NULL, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r58wid858vxh1.jpeg', NULL, NULL, NULL, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qg20moc58vxh1.jpeg', 'https://preview.redd.it/qg20moc58vxh1.jpeg?width=960&auto=webp&s=86de303330e5c853922d2ec7cabc3cf837b86499', 960, 679, 4, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b8ksx8m58vxh1.jpeg', NULL, NULL, NULL, 5, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0z9wbix58vxh1.jpeg', NULL, NULL, NULL, 6, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kdx95t268vxh1.jpeg', 'https://preview.redd.it/kdx95t268vxh1.jpeg?width=960&auto=webp&s=743549ed4cfdabd8b098baad77a73ef3dbfc8550', 960, 768, 7, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hmxqsg868vxh1.jpeg', NULL, NULL, NULL, 8, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ydymhgd68vxh1.jpeg', NULL, NULL, NULL, 9, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jxbhz3i68vxh1.jpeg', NULL, NULL, NULL, 10, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a5kaxjp68vxh1.jpeg', NULL, NULL, NULL, 11, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2kxqqju68vxh1.jpeg', NULL, NULL, NULL, 12, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg7478'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w5uujaqv8vxh1.jpeg', 'https://preview.redd.it/w5uujaqv8vxh1.jpeg?width=960&auto=webp&s=048bc0ddf4baa726a0a2fe377d2bb384bf2b557b', 960, 661, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p6gt7nxv8vxh1.jpeg', 'https://preview.redd.it/p6gt7nxv8vxh1.jpeg?width=960&auto=webp&s=148d6bc1b0179d7fc45204efcb7cfd2c655ffea0', 960, 884, 1, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qc8zvnew8vxh1.jpeg', 'https://preview.redd.it/qc8zvnew8vxh1.jpeg?width=960&auto=webp&s=0ebc63889b1be35e06bc989737bc6e3e572a9508', 960, 679, 2, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7gs1inmw8vxh1.jpeg', NULL, NULL, NULL, 3, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3lmu4uqw8vxh1.jpeg', NULL, NULL, NULL, 4, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qiyfynvw8vxh1.jpeg', NULL, NULL, NULL, 5, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4efg6f2x8vxh1.jpeg', NULL, NULL, NULL, 6, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/erb93vbx8vxh1.jpeg', NULL, NULL, NULL, 7, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vllcwzfx8vxh1.jpeg', NULL, NULL, NULL, 8, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qdwzgxkx8vxh1.jpeg', 'https://preview.redd.it/qdwzgxkx8vxh1.jpeg?width=960&auto=webp&s=4c735f688a0933cdcdc91f21458b26b890581083', 960, 768, 9, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vgjhitqx8vxh1.jpeg', NULL, NULL, NULL, 10, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rblh9avx8vxh1.jpeg', NULL, NULL, NULL, 11, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg76us'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c8n6t9e1jvxh1.jpeg', NULL, NULL, NULL, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8pk4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hvqivionjvxh1.jpeg', 'https://preview.redd.it/hvqivionjvxh1.jpeg?width=960&auto=webp&s=baabc26e6f2afce3a6adb5291488cdab227b015d', 960, 1280, 0, '2026-10-27 20:58:06', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xg8sf5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
