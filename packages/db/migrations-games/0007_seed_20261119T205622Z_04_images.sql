-- 0007_seed_20261119T205622Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T20:56:22.563579+00:00
-- Run started: 2026-11-19T20:56:22.359362+00:00
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
SELECT p.id, 'https://i.redd.it/3jcqrao6q52i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ypwx5cq6q52i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wrodf9r6q52i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhxs9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sgpp7rkvq62i1.png', 'https://preview.redd.it/sgpp7rkvq62i1.png?width=960&auto=webp&s=74c8fa66c665a58201d0e6eabee804ea41bc8d73', 960, 480, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xymbow'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s2snzac9372i1.jpeg', 'https://preview.redd.it/s2snzac9372i1.jpeg?width=960&auto=webp&s=17f50989a20cd769036e462a0ce977599c3d521b', 960, 542, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5uu2i3x9372i1.jpeg', 'https://preview.redd.it/5uu2i3x9372i1.jpeg?width=960&auto=webp&s=bbbb4e2c806135c0c488762891f0beb57655e113', 960, 541, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v8ha9oma372i1.jpeg', 'https://preview.redd.it/v8ha9oma372i1.jpeg?width=960&auto=webp&s=0aa016aa55c9f1a46b9970d409f589375f36e553', 960, 539, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xagvox6b372i1.jpeg', 'https://preview.redd.it/xagvox6b372i1.jpeg?width=960&auto=webp&s=af6864726945a1fa43ce82c20be0d1a7c8d687f8', 960, 538, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mpunwygi572i1.png', 'https://preview.redd.it/mpunwygi572i1.png?width=960&auto=webp&s=5b4227faff5a9dfffad71d7d1c1290390685ac14', 960, 540, 4, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kr4wtv2c372i1.png', 'https://preview.redd.it/kr4wtv2c372i1.png?width=960&auto=webp&s=4bceffd44f1ee9e03db000dc7ce7f8126fab7423', 960, 540, 5, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t6t9rwid372i1.jpeg', 'https://preview.redd.it/t6t9rwid372i1.jpeg?width=960&auto=webp&s=1a8c23f054d738b498da5eb2ad0ec1edda0a9c9e', 960, 1440, 6, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp3y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/byu0cwc8d72i1.png', 'https://preview.redd.it/byu0cwc8d72i1.png?width=960&auto=webp&s=15508a3c05d927c30c17744435ea452426b493f2', 960, 540, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yyjhgufbd72i1.png', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/97s0d1dfd72i1.png', 'https://preview.redd.it/97s0d1dfd72i1.png?width=960&auto=webp&s=277bd666c7c629bcd19f00e9eae5a0fd8839bab6', 960, 540, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m6cdpeghd72i1.png', NULL, NULL, NULL, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/taa8g7yid72i1.png', 'https://preview.redd.it/taa8g7yid72i1.png?width=960&auto=webp&s=de9ab4a7f8c40a57052780aaf48450d6da179f11', 960, 540, 4, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xypluk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3upyv9vpl72i1.png', 'https://preview.redd.it/3upyv9vpl72i1.png?width=960&auto=webp&s=a26000b9e937541d87d269ba3717e43afce16bb1', 960, 680, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrv3m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bn1x12vv082i1.jpeg', 'https://preview.redd.it/bn1x12vv082i1.jpeg?width=960&auto=webp&s=c16b3d8fb5de2882614b439dec89af3e07026677', 960, 540, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyt3wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ev83h4w082i1.jpeg', 'https://preview.redd.it/4ev83h4w082i1.jpeg?width=960&auto=webp&s=d8675114a41f4b88cc27ba00915163f51f655f9b', 960, 540, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyt3wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r0rs2hmw082i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyt3wm'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tnxr50d5092i1.jpeg', 'https://preview.redd.it/tnxr50d5092i1.jpeg?width=960&auto=webp&s=c029b6c6eb4cbc2c38eb9ce75a6c329ceb869362', 960, 540, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0t3660d5092i1.jpeg', 'https://preview.redd.it/0t3660d5092i1.jpeg?width=960&auto=webp&s=6d9f3aa4aa27ab9e1f7e44d7658c2a9b2c9f0f89', 960, 540, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4enbp0d5092i1.jpeg', 'https://preview.redd.it/4enbp0d5092i1.jpeg?width=960&auto=webp&s=61a52a1f8966cc9c9af371411e09ef770407e137', 960, 540, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wiogpfc5092i1.jpeg', 'https://preview.redd.it/wiogpfc5092i1.jpeg?width=960&auto=webp&s=12189f568d9c7ae002b0e1199cf9b81284d769ae', 960, 540, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/renbhec5092i1.jpeg', 'https://preview.redd.it/renbhec5092i1.jpeg?width=960&auto=webp&s=d8a10999878c4738649fad354a064fe907adde4e', 960, 540, 4, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyy59v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k2fylrfn292i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyyhlg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/eW51djRvb2l1OTJpMarusYCFyjz7-AfLBDgWaB9YUp9H6vkjgDxLXn-a61dP.png?format=pjpg&auto=webp&s=32ef0d672a536c38e40d441d01a9aeb1fe0ec284', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz217c'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/bXhmMWhieGd2OTJpMYpUJPCKd2hmd1ovL-e_t7UAUVa_5S2DiYtmuIFWyZla.png?auto=webp&s=5003c987ee5c3f751bd5ffd9174a0f8bbf92917c', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz25dh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uixgu6vj1a2i1.jpeg', 'https://preview.redd.it/uixgu6vj1a2i1.jpeg?width=960&auto=webp&s=608f073aeb7afcc30c2cc547dd885bdea985b8ae', 960, 539, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t3bo16wj1a2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/43npp9vj1a2i1.jpeg', 'https://preview.redd.it/43npp9vj1a2i1.jpeg?width=960&auto=webp&s=b4fa0e6d2391813ea7c3215ced3da586a4ffd737', 960, 400, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz37fh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6qsql2wetb2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wj3guq2ftb2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hehq97aftb2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bxeyy5fftb2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i9yzw8lftb2i1.jpeg', 'https://preview.redd.it/i9yzw8lftb2i1.jpeg?width=960&auto=webp&s=94af0156df82c41538cf5ecaad30b93bf7c1c07a', 960, 540, 4, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e10pbwoftb2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9h6m'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vvbltpytub2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sxm8w4buub2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rw4kt8huub2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/06gghaquub2i1.jpeg', 'https://preview.redd.it/06gghaquub2i1.jpeg?width=960&auto=webp&s=5ba9759bb210a0d347827d804f014d62839d8690', 960, 540, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w7fuy7xuub2i1.jpeg', 'https://preview.redd.it/w7fuy7xuub2i1.jpeg?width=960&auto=webp&s=ea84e97b8ab315ede0878cafec7a18c558859b18', 960, 540, 4, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mgv2r02vub2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7h7ru1cvub2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v74wdljvub2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wkv2cu5wub2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yz27rr3xub2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/69h0jdoxub2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz9lub'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/NmR6YW1iOGVyNzJpMbE8H3j_34uiDPn6jDQU2Ts5lt8L6qD9XGaR0fh7PZuc.jpeg?format=pjpg&auto=webp&s=e86f7f0462b264409ff7f62394052494669a6603', 'https://external-preview.redd.it/NmR6YW1iOGVyNzJpMbE8H3j_34uiDPn6jDQU2Ts5lt8L6qD9XGaR0fh7PZuc.jpeg?width=960&format=pjpg&auto=webp&s=aac89adccbb6d130a2ef99f3bf30b4e8270e7609', 960, 540, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xza36r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oac31c9qce2i1.png', 'https://cf.preview.redd.it/oac31c9qce2i1.png?width=960&auto=webp&s=97ac635552262d66cdd925ebad171aba026d3d52', 960, 540, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzjg0v'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1jg03p812g2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sr1xl2812g2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pkwabi812g2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mcvrlw812g2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsaaj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yo6bggd44g2i1.jpeg', 'https://preview.redd.it/yo6bggd44g2i1.jpeg?width=960&auto=webp&s=aee35decca212fae7b5e41413dd39be058362988', 960, 576, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e1cgghd44g2i1.jpeg', 'https://preview.redd.it/e1cgghd44g2i1.jpeg?width=960&auto=webp&s=234d7442af42c0fb25826425267e00af382dfa3f', 960, 540, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzsknz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q6lneuh5dg2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vw10xuh5dg2i1.jpeg', 'https://preview.redd.it/vw10xuh5dg2i1.jpeg?width=960&auto=webp&s=b44066ca83d2169307f6b375ebcd7b8756a6840e', 960, 540, 1, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xzkleuh5dg2i1.jpeg', 'https://preview.redd.it/xzkleuh5dg2i1.jpeg?width=960&auto=webp&s=36b0fd6cdefc2240da8add2bc85b967185a9b68f', 960, 480, 2, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztq33'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ajeu43g9dg2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-19 20:56:22', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xztqll'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
