-- 0473_seed_20261128T041121Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-28T04:11:46.982211+00:00
-- Run started: 2026-11-28T04:11:21.624926+00:00
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
SELECT p.id, 'https://i.redd.it/f7yvcu3a121i1.png', 'https://preview.redd.it/f7yvcu3a121i1.png?width=960&auto=webp&s=226413b5d90d6c205298d85d53c55c78c20180db', 960, 733, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cz03ai0p321i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rdqzkqvp321i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pusxbclq321i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l2q547cs321i1.png', 'https://preview.redd.it/l2q547cs321i1.png?width=960&auto=webp&s=1a73309d46ca82b0acb0c21dfd1b20d5ed12f27c', 960, 688, 4, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oenifg6t321i1.png', NULL, NULL, NULL, 5, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/807rk8lu321i1.png', 'https://preview.redd.it/807rk8lu321i1.png?width=960&auto=webp&s=cf8649da75bc9e9a16b5fb939ceb55f0e81cdbcf', 960, 719, 6, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uht0mx5v321i1.png', NULL, NULL, NULL, 7, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wuaro5nv321i1.png', 'https://preview.redd.it/wuaro5nv321i1.png?width=960&auto=webp&s=4e9839ffcd2419625ce9fc5a25f9e5b98b0d16ab', 960, 714, 8, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mwgdwrcw321i1.png', 'https://preview.redd.it/mwgdwrcw321i1.png?width=960&auto=webp&s=2a283112e6479afafe13d04ac4c68ccf1afd4f13', 960, 578, 9, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xta4mg2x321i1.png', 'https://preview.redd.it/xta4mg2x321i1.png?width=960&auto=webp&s=5b9d8c85920556d16cdf1aa64ebd3b2bcd138e2a', 960, 697, 10, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6av7o9vx321i1.png', 'https://preview.redd.it/6av7o9vx321i1.png?width=960&auto=webp&s=618c07c104d21bf29b27fa34620db6f368bad6b1', 960, 693, 11, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5w67tgny321i1.png', 'https://preview.redd.it/5w67tgny321i1.png?width=960&auto=webp&s=c07abd47ea3dae2712d86554e03b636d976bf53c', 960, 727, 12, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtv82e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/N8HZPZ3Ik89-zVp2RBlwCXVqgYHKSTLKFMTw6GSns1o.jpeg?format=pjpg&auto=webp&s=89a24f619f8fb8b6a2f59936021c56b83228f888', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xtw8c5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9oins6u5d24i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8ie9dut5d24i1.jpeg', 'https://preview.redd.it/8ie9dut5d24i1.jpeg?width=960&auto=webp&s=37c2b5a59874ab411ea1bfc7533eef84fc0ba3c2', 960, 400, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cd0nrut5d24i1.jpeg', 'https://preview.redd.it/cd0nrut5d24i1.jpeg?width=960&auto=webp&s=7e6cf1f34fdc708233fa70e3ea6a04607677429f', 960, 640, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7qenfut5d24i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0u1fjut5d24i1.jpeg', NULL, NULL, NULL, 4, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0wtjmut5d24i1.jpeg', 'https://preview.redd.it/0wtjmut5d24i1.jpeg?width=960&auto=webp&s=d35f8be0c96edad686630827e8def83fbc484125', 960, 561, 5, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mlyuput5d24i1.jpeg', 'https://preview.redd.it/mlyuput5d24i1.jpeg?width=960&auto=webp&s=ec06a09f364df4a75a781631ea9baf1b81563381', 960, 1200, 6, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6hoar'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/prj55lvd434i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6kkn1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/NmtnbXM0M210MzRpMXTO2xyocMvzjfRgyPAei7ai556_nMKX11ouJXdPwqG4.png?format=pjpg&auto=webp&s=2db6c0d672e56215233b240ab94c72fce7347e5f', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6mva2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vk5nwhxzv44i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q8va'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vk5nwhxzv44i1', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6q9g1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/N2tiNHNpMmE0bjNpMYikN7B-9f77Q-xoRcjxoa6szY_SjfwSFdHS_S78F-d4.png?format=pjpg&auto=webp&s=42a8df87c62853e6ce08e35ed6b4c8059699a1a0', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6snal'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yar79ilwx64i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lewaaarwx64i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oex4bxtwx64i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y6z2fr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9ayiwuudm74i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rppz19hem74i1.jpeg', 'https://preview.redd.it/rppz19hem74i1.jpeg?width=960&auto=webp&s=da19c2dd7bb23293fea5e8ad4640ea045c0938db', 960, 678, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cd9thi3fm74i1.jpeg', 'https://preview.redd.it/cd9thi3fm74i1.jpeg?width=960&auto=webp&s=b99772467a9d98759bcc271637ad23f47200f576', 960, 705, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0yaj1srfm74i1.jpeg', 'https://preview.redd.it/0yaj1srfm74i1.jpeg?width=960&auto=webp&s=99b2b6a866db075be085d7ecce7bc665f59922ea', 960, 540, 3, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vhrmi3bjm74i1.jpeg', NULL, NULL, NULL, 4, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p28o5o9km74i1.jpeg', 'https://preview.redd.it/p28o5o9km74i1.jpeg?width=960&auto=webp&s=80196a473ac995ed5de7d5eeb0e3fedfeac433dd', 960, 576, 5, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/95aoslxkm74i1.jpeg', 'https://preview.redd.it/95aoslxkm74i1.jpeg?width=960&auto=webp&s=32e46555c9159348cdbed7366e7ff6ea816998b8', 960, 626, 6, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dl03wihmm74i1.jpeg', 'https://preview.redd.it/dl03wihmm74i1.jpeg?width=960&auto=webp&s=eb76aa7421e24e4ac7e14a22373f56c15c596482', 960, 540, 7, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y72e36'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/98rcrynwr74i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iyca47rwr74i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t932lbtwr74i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ocsf7yuwr74i1.jpeg', 'https://preview.redd.it/ocsf7yuwr74i1.jpeg?width=960&auto=webp&s=7bf266909adad2ee4ce55648efa7e5771b4963b4', 960, 539, 3, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y732yv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0mphcfwtu74i1.jpeg', 'https://preview.redd.it/0mphcfwtu74i1.jpeg?width=960&auto=webp&s=cd8664de88a4f2d303fcce6c005d0770175eeb0f', 960, 640, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y73gnw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6979qr2xb84i1.jpeg', NULL, NULL, NULL, 0, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t1sshoixb84i1.jpeg', NULL, NULL, NULL, 1, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9wzdi5vxb84i1.jpeg', NULL, NULL, NULL, 2, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e0z9xp5yb84i1.jpeg', NULL, NULL, NULL, 3, '2026-11-28 04:11:46', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y75m8h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
