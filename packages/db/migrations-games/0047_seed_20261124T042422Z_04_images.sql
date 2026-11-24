-- 0047_seed_20261124T042422Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-24T04:24:23.872693+00:00
-- Run started: 2026-11-24T04:24:22.882528+00:00
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
SELECT p.id, 'https://i.redd.it/2sz5vkisfx1i1.jpeg', 'https://preview.redd.it/2sz5vkisfx1i1.jpeg?width=960&auto=webp&s=83efe60a8f5fc785c68da63f504184ae4d91a8e7', 960, 539, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxj88p'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h6vih2fwwi1i1.png', 'https://preview.redd.it/h6vih2fwwi1i1.png?width=960&auto=webp&s=03e3633d7cce2e74b4423f8838cfdecbc7561cdd', 960, 537, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/flducfxuxi1i1.png', 'https://preview.redd.it/flducfxuxi1i1.png?width=960&auto=webp&s=04d61d6222ee088445c9c7453746a691616b1659', 960, 540, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ejgpvexuxi1i1.png', 'https://preview.redd.it/ejgpvexuxi1i1.png?width=960&auto=webp&s=8de421f017c2796f0ba8f4ad37d7a3d35269562d', 960, 538, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/60df9exuxi1i1.png', NULL, NULL, NULL, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lglr5fxuxi1i1.png', NULL, NULL, NULL, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lhbj9fxuxi1i1.png', NULL, NULL, NULL, 5, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9xdnvgxuxi1i1.png', NULL, NULL, NULL, 6, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ni6o8gxuxi1i1.png', NULL, NULL, NULL, 7, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxjzv4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/khk0pe37xy1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxo4ho'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w8kvxyz0yy1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/co9vszz0yy1i1.jpeg', 'https://preview.redd.it/co9vszz0yy1i1.jpeg?width=960&auto=webp&s=48db615f0aae0458303f38f0136eef7361760245', 960, 540, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ih9uxzz0yy1i1.jpeg', NULL, NULL, NULL, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y0jqbyz0yy1i1.jpeg', NULL, NULL, NULL, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxojz1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6jrdz5safz1i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xu35avuafz1i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3ta0o0wafz1i1.jpeg', 'https://preview.redd.it/3ta0o0wafz1i1.jpeg?width=960&auto=webp&s=0aad9f8705c53bc8301f4982749d851dcc2909ae', 960, 540, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wg63ayyafz1i1.jpeg', 'https://preview.redd.it/wg63ayyafz1i1.jpeg?width=960&auto=webp&s=cfef333086b75092cfbe6fb4d79e32f4d5f530b0', 960, 540, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vfo8lb0bfz1i1.jpeg', NULL, NULL, NULL, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p765ye2bfz1i1.jpeg', 'https://preview.redd.it/p765ye2bfz1i1.jpeg?width=960&auto=webp&s=447566087531d6da8975139a60bf302472565074', 960, 720, 5, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xxq9py'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rh98ckedrv2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dkyk20gdrv2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h0hmzvgdrv2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s0kadqhdrv2i1.jpeg', 'https://preview.redd.it/s0kadqhdrv2i1.jpeg?width=960&auto=webp&s=98b89ac419183cbd928131ad25ed6dce66be8f6a', 960, 682, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b00eyjidrv2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/493umdjdrv2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1m9e9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/92mdfo9r1w2i1.jpeg', 'https://cf.preview.redd.it/92mdfo9r1w2i1.jpeg?width=960&auto=webp&s=e45af62924a7b6987e8962ed5bb869fddba0ddc6', 960, 1232, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uj66q82t1w2i1.jpeg', 'https://cf.preview.redd.it/uj66q82t1w2i1.jpeg?width=960&auto=webp&s=1eebb7e9de7a5f6695fecb5b94288c2d4d09561a', 960, 640, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uzfevvtu1w2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aht9vpyu1w2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/las7jg1v1w2i1.jpeg', 'https://cf.preview.redd.it/las7jg1v1w2i1.jpeg?width=960&auto=webp&s=a441f5392885e12fa9161f92416473de1736386c', 960, 640, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1ncyb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/rzhq8u2d5w2i1.jpeg', 'https://preview.redd.it/rzhq8u2d5w2i1.jpeg?width=960&auto=webp&s=4fed1ea59f460829f1a89210259d38129c167f23', 960, 600, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tzu07u2d5w2i1.jpeg', 'https://preview.redd.it/tzu07u2d5w2i1.jpeg?width=960&auto=webp&s=79d0cfd8b5fa7bf6adab419666b0a40fa2ac2fc8', 960, 539, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/3nf71u2d5w2i1.jpeg', 'https://preview.redd.it/3nf71u2d5w2i1.jpeg?width=960&auto=webp&s=b3348536299bdc911212a9572865ecec5426372d', 960, 540, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tayj0u2d5w2i1.jpeg', 'https://preview.redd.it/tayj0u2d5w2i1.jpeg?width=960&auto=webp&s=fb4f3ff92617ba1a6825b33eb03d53863d27be61', 960, 555, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2pvagu2d5w2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1nq50'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ufdp4osmnw2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/v1hfznsmnw2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1zfnaosmnw2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mdfz8nsmnw2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mzsusnsmnw2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r8t9eosmnw2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zbdxtnsmnw2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bksolosmnw2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pkg8'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/26n9jgbunw2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bw72qsdunw2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1pl55'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xxdim5sktw2i1.png', 'https://preview.redd.it/xxdim5sktw2i1.png?width=960&auto=webp&s=adef99aa655148da3faf2503a1d74c6a5a4bf28c', 960, 539, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1q5tr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h5lyux8b8x2i1.jpeg', 'https://preview.redd.it/h5lyux8b8x2i1.jpeg?width=960&auto=webp&s=17ebd8190a80f974be7772469841130335f2dae0', 960, 1004, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4y3krw8b8x2i1.jpeg', 'https://preview.redd.it/4y3krw8b8x2i1.jpeg?width=960&auto=webp&s=42a0ca449d331c457b2a863df9642539d5adf7fc', 960, 834, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8x9dkx8b8x2i1.jpeg', 'https://preview.redd.it/8x9dkx8b8x2i1.jpeg?width=960&auto=webp&s=3f63885c1487b70d9c53ef9c34524ca8c704b854', 960, 540, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1rhii'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tmpm4v4g1y2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1u0w6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zldxz08g1y2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1u0w6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/flufe46sny2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1w4c2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ums79casny2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y1w4c2'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cwlc5fsvoa3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y39q78'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j3eg1j2gzb3i1.png', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3dzx0'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/ZXdrbnhveHc0YzNpMVUlfUwe60elk0UeXgKAgZXQS6SLqmGayFQOUUYlSqWL.jpeg?format=pjpg&auto=webp&s=0e013ba997a6bb715032cfd58bc5acf96410c28c', 'https://external-preview.redd.it/ZXdrbnhveHc0YzNpMVUlfUwe60elk0UeXgKAgZXQS6SLqmGayFQOUUYlSqWL.jpeg?width=960&format=pjpg&auto=webp&s=74d9709308b25e5bd197d3cf799cf345d3ef3634', 960, 540, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3efmq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/te6v4f66ld3i1.jpeg', 'https://cf.preview.redd.it/te6v4f66ld3i1.jpeg?width=960&auto=webp&s=89024a08b37ecc77ed0815178dc829ed2f0f4b0a', 960, 540, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x94xkf66ld3i1.jpeg', 'https://cf.preview.redd.it/x94xkf66ld3i1.jpeg?width=960&auto=webp&s=1698f4c116f3ed9d95ad25891cbd37f5ce725046', 960, 1202, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0d4vjf66ld3i1.jpeg', 'https://cf.preview.redd.it/0d4vjf66ld3i1.jpeg?width=960&auto=webp&s=c7d5a0b24f067ca0b052fd3286e8ccd055278079', 960, 1082, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q9yrof66ld3i1.jpeg', 'https://cf.preview.redd.it/q9yrof66ld3i1.jpeg?width=960&auto=webp&s=de15efc01a9dcd1a1190334f56e32c7953b10069', 960, 540, 3, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3k8j4'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i6yj8kwloe3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qe5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xmt0wizmre3i1.jpeg', 'https://preview.redd.it/xmt0wizmre3i1.jpeg?width=960&auto=webp&s=82f8079fe0b331afc43ec5a3d69eaf2dc91e46cd', 960, 1423, 0, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l9oebz2nre3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9t1ek45nre3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-24 04:24:23', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3qkmj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
