-- 0423_seed_20261121T210301Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-21T21:03:36.894793+00:00
-- Run started: 2026-11-21T21:03:01.756078+00:00
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
SELECT p.id, 'https://external-preview.redd.it/x-iwhxaASxLb3oIOrI_EKRXW9wmOZoTmEX9oD-BfHWg.jpeg?format=pjpg&auto=webp&s=75676a311ad8d5a095b801b04f6ed0e05b929456', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovaq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/x-iwhxaASxLb3oIOrI_EKRXW9wmOZoTmEX9oD-BfHWg.jpeg?format=pjpg&auto=webp&s=75676a311ad8d5a095b801b04f6ed0e05b929456', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwovsi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5fvq83sj9q1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rquty9vj9q1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q9d57exj9q1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3vmdd4zj9q1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2mu4yt0k9q1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwpafn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/heorp9193r1i1.png', 'https://preview.redd.it/heorp9193r1i1.png?width=960&auto=webp&s=b52d86ecdc8d8104ba398c76cfed8b1255521229', 960, 511, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwrxjg'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wd3kb3ncwr1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v3ytzwscwr1i1.jpeg', 'https://preview.redd.it/v3ytzwscwr1i1.jpeg?width=960&auto=webp&s=81778ccf87c7bce4cdb86acad827f9b53d93a1b2', 960, 1371, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sx6k5o1dwr1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oqdv6q6dwr1i1.jpeg', 'https://preview.redd.it/oqdv6q6dwr1i1.jpeg?width=960&auto=webp&s=a5adea2352891fc9655228956e0bc5095b16e626', 960, 480, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0dyw82ddwr1i1.jpeg', 'https://preview.redd.it/0dyw82ddwr1i1.jpeg?width=960&auto=webp&s=0d840c133ba346f0bc1de4cf6975789ef20fb88c', 960, 540, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/740rdygdwr1i1.jpeg', 'https://preview.redd.it/740rdygdwr1i1.jpeg?width=960&auto=webp&s=8a4f1a4ff1d4a31c77def30b314ebbb50c2d95d2', 960, 640, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwupul'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x55ngsdq3s1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvknc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/49ktvijq3s1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvknc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/otz7mamq3s1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvknc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/di4314sq3s1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvknc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9nq01ldg4s1i1.png', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvvly'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rg8ebxn04s1i1.png', 'https://preview.redd.it/rg8ebxn04s1i1.png?width=960&auto=webp&s=047bb495a91db030e58db93c03222302381354fe', 960, 540, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvvly'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cgo8fdaj4s1i1.png', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvvly'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3f8r8ctq4s1i1.png', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwvvly'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5gtbykonis1i1.jpeg', 'https://preview.redd.it/5gtbykonis1i1.jpeg?width=960&auto=webp&s=97d587e169aa944126110101ba0f0162f0e7ce2f', 960, 1448, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwxh5h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bxqttkrnis1i1.jpeg', 'https://preview.redd.it/bxqttkrnis1i1.jpeg?width=960&auto=webp&s=9f56151690f5fafd81d4206887a1ba5ea351e05e', 960, 1440, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwxh5h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4l6qpqsnis1i1.png', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwxh5h'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i71ntvkrzs1i1.jpeg', 'https://cf.preview.redd.it/i71ntvkrzs1i1.jpeg?width=960&auto=webp&s=46db20781dd2885a8cb879ba1387d10dbf3c4e3c', 960, 1199, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nsq0wvkrzs1i1.jpeg', 'https://cf.preview.redd.it/nsq0wvkrzs1i1.jpeg?width=960&auto=webp&s=5978d56eb011983834d5ba06f153caee59709c78', 960, 960, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wyhj4wkrzs1i1.jpeg', 'https://cf.preview.redd.it/wyhj4wkrzs1i1.jpeg?width=960&auto=webp&s=fdcac6b4dc24109548b1ff33e2a16fcf36b2bccf', 960, 1199, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n3btnvkrzs1i1.jpeg', 'https://cf.preview.redd.it/n3btnvkrzs1i1.jpeg?width=960&auto=webp&s=36bfe07897ee42da0cf0989e6d14c0694e72ef71', 960, 960, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vwj2uvkrzs1i1.jpeg', 'https://cf.preview.redd.it/vwj2uvkrzs1i1.jpeg?width=960&auto=webp&s=a87576d6441d42a6f935528f0ceb16f0c9a2866c', 960, 1199, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zovdnvkrzs1i1.jpeg', 'https://cf.preview.redd.it/zovdnvkrzs1i1.jpeg?width=960&auto=webp&s=5900cc072f84fade6fa41689aa43473401908666', 960, 1199, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xwztqs'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/55lqqa1p5t1i1.jpeg', 'https://preview.redd.it/55lqqa1p5t1i1.jpeg?width=960&auto=webp&s=69c861b22e4bc43d767af4bc47463a8db57d7fb5', 960, 960, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ymlsz60p5t1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zc35k60p5t1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g8p1ot0p5t1i1.jpeg', 'https://preview.redd.it/g8p1ot0p5t1i1.jpeg?width=960&auto=webp&s=2421dba45c37bcb4beed1c9ed7f71b89d6dddb32', 960, 634, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ip9f870p5t1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dlc0951p5t1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zgldd70p5t1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eiihk60p5t1i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/klfb702p5t1i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l56t170p5t1i1.jpeg', 'https://preview.redd.it/l56t170p5t1i1.jpeg?width=960&auto=webp&s=c649b74a2837fface0d346ba2a54de84bea3164f', 960, 1187, 9, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bg7u470p5t1i1.jpeg', 'https://preview.redd.it/bg7u470p5t1i1.jpeg?width=960&auto=webp&s=97e641a51c2048ab3afc7fd25264a2e0d4809079', 960, 1197, 10, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x4sdt41p5t1i1.jpeg', NULL, NULL, NULL, 11, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ljvfs53p5t1i1.jpeg', 'https://preview.redd.it/ljvfs53p5t1i1.jpeg?width=960&auto=webp&s=421c83a1c3b065113d290511b51a2a207dff3d01', 960, 1200, 12, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx0old'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/isie2e33bt1i1.jpeg', 'https://cf.preview.redd.it/isie2e33bt1i1.jpeg?width=960&auto=webp&s=3ebd2a96935788ef83799d73dac629abb0c595b2', 960, 710, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pxrdb3b3bt1i1.jpeg', 'https://cf.preview.redd.it/pxrdb3b3bt1i1.jpeg?width=960&auto=webp&s=436b83a9d7a82151a4d35cf4748fcf6ce66aa862', 960, 1422, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5q4dghk3bt1i1.jpeg', 'https://cf.preview.redd.it/5q4dghk3bt1i1.jpeg?width=960&auto=webp&s=dcf0e9f08a646fe52ac02c91e9e38a7d974f10ea', 960, 1422, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9p9i3ct3bt1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wukje1y3bt1i1.jpeg', 'https://cf.preview.redd.it/wukje1y3bt1i1.jpeg?width=960&auto=webp&s=bf63c1bada1710423bb4579027eff4113e692b16', 960, 640, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7wxgw834bt1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gdw87a64bt1i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx1gxk'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5x3bwwf3ht1i1.jpeg', 'https://preview.redd.it/5x3bwwf3ht1i1.jpeg?width=960&auto=webp&s=e29ba217c16dc3831ef64ecb3bebde7d5cc4f461', 960, 384, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q2i86vf3ht1i1.jpeg', 'https://preview.redd.it/q2i86vf3ht1i1.jpeg?width=960&auto=webp&s=444d0aedbc988f45f299e731c918d574bb731971', 960, 540, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yzczavf3ht1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jy4o5yf3ht1i1.jpeg', 'https://preview.redd.it/jy4o5yf3ht1i1.jpeg?width=960&auto=webp&s=f1f71c471ae30d64dff0795ee605f95c677d68cc', 960, 540, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/be3ecvf3ht1i1.jpeg', 'https://preview.redd.it/be3ecvf3ht1i1.jpeg?width=960&auto=webp&s=a964f3df4d2b7c7ae661bac3548189b4ffd69f65', 960, 723, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2c51'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fuksleqrkt1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8okm1gqrkt1i1.jpeg', 'https://preview.redd.it/8okm1gqrkt1i1.jpeg?width=960&auto=webp&s=df5123aac7eeb19bf37524c45062802283a39f6d', 960, 701, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/quw0bfqrkt1i1.jpeg', 'https://preview.redd.it/quw0bfqrkt1i1.jpeg?width=960&auto=webp&s=76e6c750e9f70e1d29b6ff72d630b4fe3de1b17b', 960, 1200, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3t5vzfqrkt1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4bnfhfqrkt1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jjg96gqrkt1i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qs7v9jqrkt1i1.jpeg', 'https://preview.redd.it/qs7v9jqrkt1i1.jpeg?width=960&auto=webp&s=04ddab5bdc9352c2abf20ed49c8251bed6103f0b', 960, 1076, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xx2uyi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1u7rvrrevn2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/okt25trevn2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e8rnbsrevn2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oey6fsrevn2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xf19gtrevn2i1.jpeg', 'https://preview.redd.it/xf19gtrevn2i1.jpeg?width=960&auto=webp&s=409788a9514ff10b2a5cf5c0214be78946ded3ff', 960, 960, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t0levrrevn2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eikvesrevn2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0pbaz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m7u46lnnco2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rbax'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fu0hnpnydo2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x028q0oydo2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ial6tynydo2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zl5ggwnydo2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rhm5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cttdj1bxfo2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1qlehv01go2i1.jpeg', 'https://preview.redd.it/1qlehv01go2i1.jpeg?width=960&auto=webp&s=6d27ca5c871ab6825508c3fc6d0702a0095d32c2', 960, 638, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x7c5xbr1go2i1.jpeg', 'https://preview.redd.it/x7c5xbr1go2i1.jpeg?width=960&auto=webp&s=d002f1dae604dd17a5b8c3194af9aa27af5a7c4a', 960, 958, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5elqocl3go2i1.jpeg', 'https://preview.redd.it/5elqocl3go2i1.jpeg?width=960&auto=webp&s=9df6dbce8f288022092af81625934ebf6f7a3b9b', 960, 958, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ohfd4m6go2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/iwrb16x9go2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hhkjxpaago2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n4hc69ucgo2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/guoome6ggo2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/f5gqbkklgo2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s2clk7omgo2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0rrxn'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j9xtk0teso2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o5kqhrveso2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d2awcoxeso2i1.jpeg', 'https://cf.preview.redd.it/d2awcoxeso2i1.jpeg?width=960&auto=webp&s=b16cc7344953081632c6c348cbc2361521f943dc', 960, 1706, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b0h8950fso2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bsp3c12fso2i1.jpeg', 'https://cf.preview.redd.it/bsp3c12fso2i1.jpeg?width=960&auto=webp&s=2e357e55be985a89144e9be00a5037dd05b85aaf', 960, 477, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6y310c4fso2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9j4gvc6fso2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x3qgv78fso2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tetep5afso2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nrpwg7cfso2i1.jpeg', 'https://cf.preview.redd.it/nrpwg7cfso2i1.jpeg?width=960&auto=webp&s=857768ddece6c76a0f59bc0210bd8c0fad22ebdf', 960, 580, 9, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uim3bdefso2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k5h70agfso2i1.jpeg', 'https://cf.preview.redd.it/k5h70agfso2i1.jpeg?width=960&auto=webp&s=0ac3193b8c2a8330d79a74b0b44b55321ed860a0', 960, 480, 11, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9l6hodifso2i1.jpeg', NULL, NULL, NULL, 12, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4cyq1klfso2i1.jpeg', NULL, NULL, NULL, 13, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g6e1kknfso2i1.jpeg', 'https://cf.preview.redd.it/g6e1kknfso2i1.jpeg?width=960&auto=webp&s=de52bdf490e36269cdaeb178c8e161de0aa15c43', 960, 960, 14, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ms4urxpfso2i1.jpeg', 'https://cf.preview.redd.it/ms4urxpfso2i1.jpeg?width=960&auto=webp&s=92017c56cdc03791d06a2bf8bf8294b08f2643d2', 960, 384, 15, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0t39y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/00y8071xvo2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/24k3z45xvo2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fxcl8m8xvo2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fejy7laxvo2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o9j7lfexvo2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j2qb7igxvo2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/33cupeixvo2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1h85bgkxvo2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mclrihmxvo2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ytfjxspxvo2i1.jpeg', 'https://preview.redd.it/ytfjxspxvo2i1.jpeg?width=960&auto=webp&s=6b35b0580e0155d81db9ccfbd47d193c0b12f2c9', 960, 809, 9, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/slhkj0sxvo2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0ycl16uxvo2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0tggl'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0mwjrjybip2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d4h53kybip2i1.jpeg', 'https://preview.redd.it/d4h53kybip2i1.jpeg?width=960&auto=webp&s=1e593821e291d79b92200a95017d46abc69653df', 960, 1200, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o3o51kybip2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0vppe'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vx7ovtw2vp2i1.jpeg', 'https://preview.redd.it/vx7ovtw2vp2i1.jpeg?width=960&auto=webp&s=adba810a16c6e98e653a2febca1b2424035adbad', 960, 960, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0ww93'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h387c9r1eq2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yc4m89r1eq2i1.jpeg', 'https://cf.preview.redd.it/yc4m89r1eq2i1.jpeg?width=960&auto=webp&s=e6941743f0e640817ebf7b811cf4dfc9d8e0c391', 960, 1426, 1, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bt6jq8r1eq2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qfimw8r1eq2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sorj4ar1eq2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9327o9r1eq2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5j9ux8r1eq2i1.jpeg', 'https://cf.preview.redd.it/5j9ux8r1eq2i1.jpeg?width=960&auto=webp&s=3926a69efdf9c8ec740dff68ab15dd0af1956c45', 960, 1452, 6, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y451d9r1eq2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cjhma9r1eq2i1.jpeg', 'https://cf.preview.redd.it/cjhma9r1eq2i1.jpeg?width=960&auto=webp&s=f926328fe46fb71f92d6e2e5382772a0bf4f8aaa', 960, 1376, 8, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cgqug9r1eq2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7ibeiar1eq2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/le2699r1eq2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-21 21:03:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y0yj8i'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
