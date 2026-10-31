-- 0357_seed_20261031T234733Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-31T23:47:58.581496+00:00
-- Run started: 2026-10-31T23:47:33.649440+00:00
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
SELECT p.id, 'https://external-preview.redd.it/cHU4MTdkMXdlOXloMeCY3i9CX70TPAAuZgX2d5z0QvuZNcTlyTlkuGyQHsvF.png?format=pjpg&auto=webp&s=ff1946bf154d680101f9736584f90037cf494b55', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhxzh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/yvRmyqZwTtLgOTOjMTYQdizU85oEyNPuOcX7F_vqtME.png?auto=webp&s=12d0660ac18d2a542106e5f4c50912bf6cc14d16', 'https://external-preview.redd.it/yvRmyqZwTtLgOTOjMTYQdizU85oEyNPuOcX7F_vqtME.png?width=960&auto=webp&s=cd25620a442f5d332f9a2dd186ae4454d11aac06', 960, 504, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xhyiff'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/00fow9xoiayh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t9q0z9xoiayh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jtlhx8xoiayh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vo5ia9xoiayh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi3nsh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jx1fg2yssayh1.jpeg', 'https://preview.redd.it/jx1fg2yssayh1.jpeg?width=960&auto=webp&s=5c6e8f401cf9d565e1b9117fe63dbd4e579923eb', 960, 480, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r01kwhwssayh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c5rjvhwssayh1.jpeg', 'https://preview.redd.it/c5rjvhwssayh1.jpeg?width=960&auto=webp&s=df2c16eb9b572d1453107cc6b04a2639b6de45c3', 960, 502, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dlqkvhwssayh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi50f1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/du2wbkigtayh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5ajgvkigtayh1.jpeg', 'https://preview.redd.it/5ajgvkigtayh1.jpeg?width=960&auto=webp&s=98bf479ecb339ca1739eb766d9b4f637d553fcaf', 960, 639, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/urtewjigtayh1.jpeg', 'https://preview.redd.it/urtewjigtayh1.jpeg?width=960&auto=webp&s=1d366b6f03a9a09b2c356f45fbbbdbc15ba83303', 960, 596, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3t30lkigtayh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1pnftkigtayh1.jpeg', 'https://preview.redd.it/1pnftkigtayh1.jpeg?width=960&auto=webp&s=ac18d8992e2311b44f2946d4e33a6670d7a6f21d', 960, 640, 4, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jk8ugkigtayh1.jpeg', 'https://preview.redd.it/jk8ugkigtayh1.jpeg?width=960&auto=webp&s=66a5022d86e7e5e4d99ef3ec9b2875cb22df0f69', 960, 640, 5, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/exqjukigtayh1.jpeg', NULL, NULL, NULL, 6, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ps3bfkigtayh1.jpeg', 'https://preview.redd.it/ps3bfkigtayh1.jpeg?width=960&auto=webp&s=10e3b3c3e5f2266086300bc8542a9873c542e2c1', 960, 763, 7, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53df'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8mjzxpritayh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9rc7sptitayh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9hty74vitayh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5n0889xitayh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6hr62pyitayh1.jpeg', NULL, NULL, NULL, 4, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/srmycp0jtayh1.jpeg', NULL, NULL, NULL, 5, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wg2gw62jtayh1.jpeg', NULL, NULL, NULL, 6, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4u68hb5jtayh1.jpeg', 'https://cf.preview.redd.it/4u68hb5jtayh1.jpeg?width=960&auto=webp&s=ca603c7e4cc50cfe909991a8e13728235fe12719', 960, 1184, 7, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi53p9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t0tytr355byh1.png', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xb9ysay55byh1.png', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/riebz8c85byh1.png', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k0qhkd795byh1.png', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/npbayxx95byh1.png', NULL, NULL, NULL, 4, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3w2gd5wb5byh1.png', NULL, NULL, NULL, 5, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi6kf3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e0uvqpxtdbyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k6v7woxtdbyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i55ixpxtdbyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pww8xqmwdbyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7lmf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/27qmi6fyebyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjtjk6fyebyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b032x6fyebyh1.jpeg', 'https://preview.redd.it/b032x6fyebyh1.jpeg?width=960&auto=webp&s=718d136e22db9f26256f0483ed753e2f2a40bd7c', 960, 1195, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jr9837fyebyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jaufh6fyebyh1.jpeg', NULL, NULL, NULL, 4, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2f9667fyebyh1.jpeg', NULL, NULL, NULL, 5, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi7pct'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i23i8f7ekbyh1.jpeg', 'https://preview.redd.it/i23i8f7ekbyh1.jpeg?width=960&auto=webp&s=aa7b681b4e0d7f4556dbada2ee802cd7b3139df7', 960, 916, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8bu3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xa0t93fpkbyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xi8d2e'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eozftbw6rcyh1.png', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xicn06'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gjualdt84eyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xih5yz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eap925ix3eyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6ltg95ix3eyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k1t7u5ix3eyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pe3jv6ix3eyh1.jpeg', 'https://preview.redd.it/pe3jv6ix3eyh1.jpeg?width=960&auto=webp&s=cea4f7c4e5976f9cf58fda5fdf85c8e9d96a8798', 960, 639, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yfns35ix3eyh1.jpeg', NULL, NULL, NULL, 4, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rbe9u5ix3eyh1.jpeg', 'https://preview.redd.it/rbe9u5ix3eyh1.jpeg?width=960&auto=webp&s=29065ab251f79a63f64a55d65e7d4a037419f82d', 960, 1200, 5, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x5mpj5ix3eyh1.jpeg', 'https://preview.redd.it/x5mpj5ix3eyh1.jpeg?width=960&auto=webp&s=4f1671bdd60c6a59e0413caad169a12828aaa67b', 960, 1280, 6, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2shpy5ix3eyh1.jpeg', NULL, NULL, NULL, 7, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xihaxu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3aa2vrr1cyh1.png', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xijv5r'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3cxo7jk2lfyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xiof22'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ryevbi7puiyh1.jpeg', 'https://preview.redd.it/ryevbi7puiyh1.jpeg?width=960&auto=webp&s=051d8bd0d042a8a67a0c0744a82bd6a5af368293', 960, 1257, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ittooh7puiyh1.jpeg', 'https://preview.redd.it/ittooh7puiyh1.jpeg?width=960&auto=webp&s=2a58212f22b21a4cceb7bd2968f3e8246baf4746', 960, 911, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj4h8y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ic3ulc1ajyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xmrummc1ajyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2kzv3mc1ajyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6j030mc1ajyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj641d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/982zi0r89kyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xj9abn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ywsw02hj5lyh1.jpeg', NULL, NULL, NULL, 0, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/khhszxgj5lyh1.jpeg', NULL, NULL, NULL, 1, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ydwk9wgj5lyh1.jpeg', NULL, NULL, NULL, 2, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x8wd18hj5lyh1.jpeg', NULL, NULL, NULL, 3, '2026-10-31 23:47:58', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xjc84w'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
