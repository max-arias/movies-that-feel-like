-- 0382_seed_20261117T022105Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-17T02:21:28.386461+00:00
-- Run started: 2026-11-17T02:21:05.785934+00:00
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
SELECT p.id, 'https://i.redd.it/c66owopjnu1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx86i7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tpcvwbejxu1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4ppscbejxu1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6lxfvcejxu1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ez9oxbejxu1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cbezacejxu1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0w224bejxu1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oxsfkbejxu1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3f18mcejxu1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1t9p3cejxu1i1.jpeg', NULL, NULL, NULL, 8, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qfh48dejxu1i1.jpeg', NULL, NULL, NULL, 9, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9gox'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8kcls28f0v1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6rghg98f0v1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ksjtg38f0v1i1.jpeg', 'https://preview.redd.it/ksjtg38f0v1i1.jpeg?width=960&auto=webp&s=485acfb74e358aefb249a717fe37d142e39be0a8', 960, 960, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k5xp6b8f0v1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aen6g58f0v1i1.jpeg', 'https://preview.redd.it/aen6g58f0v1i1.jpeg?width=960&auto=webp&s=2d58ff6f2986e19840d377ae2beebeff5070184d', 960, 685, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjbez68f0v1i1.jpeg', 'https://preview.redd.it/wjbez68f0v1i1.jpeg?width=960&auto=webp&s=423d5f4525f2e081a275a0e769276fb15ecdcffd', 960, 777, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/atjio38f0v1i1.jpeg', 'https://preview.redd.it/atjio38f0v1i1.jpeg?width=960&auto=webp&s=6cf782a8bf675ac71011a2e34092eac9d2864c5e', 960, 640, 6, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/16qim38f0v1i1.jpeg', 'https://preview.redd.it/16qim38f0v1i1.jpeg?width=960&auto=webp&s=e7a9a33037901550a648a81fb200e0e8f2dbe909', 960, 577, 7, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/maz9fb8f0v1i1.jpeg', 'https://preview.redd.it/maz9fb8f0v1i1.jpeg?width=960&auto=webp&s=d67ad517bed2676dd3411993fc2866cc88c56a22', 960, 720, 8, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s1rn3k8f0v1i1.jpeg', NULL, NULL, NULL, 9, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx9tpn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/llsdm7896v1i1.jpeg', 'https://preview.redd.it/llsdm7896v1i1.jpeg?width=960&auto=webp&s=57154c68cf4df2685d299185c14f3d0267fec4b2', 960, 630, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kl8yi3b96v1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5gnt7id96v1i1.jpeg', 'https://preview.redd.it/5gnt7id96v1i1.jpeg?width=960&auto=webp&s=b2c45776f393f592cacf0b5ea41bcfc1f7e0cb86', 960, 747, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wv8trxe96v1i1.jpeg', 'https://preview.redd.it/wv8trxe96v1i1.jpeg?width=960&auto=webp&s=2cf477940c7cbf3f15162e1cb95fccd29bf9426e', 960, 1718, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5zowufh96v1i1.jpeg', 'https://preview.redd.it/5zowufh96v1i1.jpeg?width=960&auto=webp&s=d9d9937a03ad6fe08868d168995d41e98ae76b6b', 960, 648, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxajb3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l9r29kg3dv1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxbedw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qxktq109mv1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hfmrxo39mv1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dp65o859mv1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hch4jz69mv1i1.jpeg', 'https://cf.preview.redd.it/hch4jz69mv1i1.jpeg?width=960&auto=webp&s=64de4adb6ac781fc60df3e7fedeb8c5bfd7f6b6a', 960, 663, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6yaw0t89mv1i1.jpeg', 'https://cf.preview.redd.it/6yaw0t89mv1i1.jpeg?width=960&auto=webp&s=a09138ae7ec8726007e63bf1485de21d8b3ad4d2', 960, 1212, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxcg9h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bhrxo0wesv1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxd5m9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l94wdbyv6w1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/npqxqd0w6w1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q59l7d1w6w1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wbugcb2w6w1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sau1hu3w6w1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxes74'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6oyt7qyynw1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kmtmcj1znw1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8l75kp4znw1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n8uwwd7znw1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i6uc1v9znw1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s9ywk4bznw1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0bzjqhcznw1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ubkjwpdznw1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/phejj7fznw1i1.jpeg', NULL, NULL, NULL, 8, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxgke5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/R0G_ihJmdd9y8PN0RmlizGF-M2qc0MshTbEQt0H-pWo.jpeg?auto=webp&s=51291951dfc01f4e7523bcabb196b1e0ce328c2a', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxm3hl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/etfuv6hzky1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vuefxo40ly1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xeslz3h0ly1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c8ntofc1ly1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vao7sns0ly1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7pdxgemely1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yl9yz602ly1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rc08bkr2ly1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nmzatjh3ly1i1.jpeg', NULL, NULL, NULL, 8, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmxsv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5lmx397zly1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3n5l9a7zly1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x868k87zly1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3d54g87zly1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zaw6aa7zly1i1.png', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vy1v31hzly1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxmz93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MIrLjRIfDQNVU8XqfuAxgrTGc9W8RDM7lpf9XxGJ9vc.jpeg?format=pjpg&auto=webp&s=0f51e8e9e4c49d39ff4a87a42219ec063cb984c3', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo6a4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7wh9vjp1zy1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xpe6e8w1zy1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ptu6fu02zy1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dmkxlw32zy1i1.jpeg', 'https://preview.redd.it/dmkxlw32zy1i1.jpeg?width=960&auto=webp&s=3195d982a1da9cc61ef890422baf3c2845621086', 960, 640, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wg604y82zy1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxobc8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4jzivcb5kz1i1.jpeg', 'https://preview.redd.it/4jzivcb5kz1i1.jpeg?width=960&auto=webp&s=a91a9951b47a71355afb7d001c92c94bb9bc8b22', 960, 540, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8de0kcb5kz1i1.jpeg', 'https://preview.redd.it/8de0kcb5kz1i1.jpeg?width=960&auto=webp&s=1b6bcf0b315281069aa577688c9f1a6677629b29', 960, 540, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jsik8cb5kz1i1.jpeg', 'https://preview.redd.it/jsik8cb5kz1i1.jpeg?width=960&auto=webp&s=2d29a9aa462a7e2c53a84be6b2759214e9222674', 960, 540, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e3cq6cb5kz1i1.jpeg', 'https://preview.redd.it/e3cq6cb5kz1i1.jpeg?width=960&auto=webp&s=b6e62c27fab5471b367f0ef2c7a6338323d82e72', 960, 540, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lild6cb5kz1i1.jpeg', 'https://preview.redd.it/lild6cb5kz1i1.jpeg?width=960&auto=webp&s=4c5af0b2187bb7efd2739107ab0f2d56a26657db', 960, 539, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/67i802p8kz1i1.jpeg', 'https://preview.redd.it/67i802p8kz1i1.jpeg?width=960&auto=webp&s=64a44074d52d4e5c6d2e76ce02894e126d9bbbee', 960, 553, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxqyf0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0i02b81g202i1.jpeg', 'https://preview.redd.it/0i02b81g202i1.jpeg?width=960&auto=webp&s=7e89946e4c55f5366a661f1a0dabcab6ec946da7', 960, 540, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxtkbe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bkkb9fu4302i1.jpeg', NULL, NULL, NULL, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4wixee15302i1.jpeg', NULL, NULL, NULL, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pn033845302i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/u1tiau65302i1.jpeg', NULL, NULL, NULL, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4rpkeg95302i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxto7k'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wnudrrm5902i1.jpeg', 'https://cf.preview.redd.it/wnudrrm5902i1.jpeg?width=960&auto=webp&s=79c4d96978a6bc95abec0fba125f8708f81cb50f', 960, 728, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pe6qtqm5902i1.jpeg', 'https://cf.preview.redd.it/pe6qtqm5902i1.jpeg?width=960&auto=webp&s=37ee9865de789b86234a0ca3fed9d77b31be2e62', 960, 540, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9v9pdsm5902i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxukjn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x2mlvu65p02i1.jpeg', 'https://preview.redd.it/x2mlvu65p02i1.jpeg?width=960&auto=webp&s=2b4a9f0baf9e37921c4b4528b8e5954c237d9ead', 960, 504, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d6e46v65p02i1.jpeg', 'https://preview.redd.it/d6e46v65p02i1.jpeg?width=960&auto=webp&s=7bf4357d14da11ae9d69dd621d3e818d2f7be955', 960, 550, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/trudsu65p02i1.jpeg', 'https://preview.redd.it/trudsu65p02i1.jpeg?width=960&auto=webp&s=4a906dc4358df344c0502d70874ca415ab0efd0a', 960, 407, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gdgdrw65p02i1.jpeg', 'https://preview.redd.it/gdgdrw65p02i1.jpeg?width=960&auto=webp&s=b20132446b669aabbac7a3a1831edc13918ed53d', 960, 960, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r9zywu65p02i1.jpeg', 'https://preview.redd.it/r9zywu65p02i1.jpeg?width=960&auto=webp&s=c18f2c711396dac93c82a4fe3a1bd8f1377933d0', 960, 640, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxwznq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5jo202qi912i1.jpeg', 'https://preview.redd.it/5jo202qi912i1.jpeg?width=960&auto=webp&s=6b4321218bf18d93fdb57f70fe8febd489ac1663', 960, 540, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tbcm91qi912i1.jpeg', 'https://preview.redd.it/tbcm91qi912i1.jpeg?width=960&auto=webp&s=66f4b0300d6aefb2d1ded40a5c9a8f701750cd8b', 960, 644, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ypm4p1qi912i1.jpeg', NULL, NULL, NULL, 2, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uue8g1qi912i1.jpeg', 'https://preview.redd.it/uue8g1qi912i1.jpeg?width=960&auto=webp&s=aba15c1b372dc7e71f0522136fe5d871be1943bd', 960, 716, 3, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9mf882qi912i1.jpeg', NULL, NULL, NULL, 4, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r89w11qi912i1.jpeg', 'https://preview.redd.it/r89w11qi912i1.jpeg?width=960&auto=webp&s=6533b94942ceb8d6317f61cd044fd47dc48c8fd0', 960, 720, 5, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ei5671qi912i1.jpeg', 'https://preview.redd.it/ei5671qi912i1.jpeg?width=960&auto=webp&s=4660ffd8a3d7adcb1483b154a1bf8594a05a096f', 960, 723, 6, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ypoxg1qi912i1.jpeg', NULL, NULL, NULL, 7, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy02jb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zg6u2yemk12i1.jpeg', 'https://preview.redd.it/zg6u2yemk12i1.jpeg?width=960&auto=webp&s=20187693f39a6e668b670223e96e64e560e93dd9', 960, 1479, 0, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1ox9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z4twq1gmk12i1.jpeg', 'https://preview.redd.it/z4twq1gmk12i1.jpeg?width=960&auto=webp&s=313857990afde507804e2d93edb347226795df38', 960, 1199, 1, '2026-11-17 02:21:28', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xy1ox9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
