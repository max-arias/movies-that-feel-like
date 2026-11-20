-- 0408_seed_20261120T132617Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-20T13:26:56.192511+00:00
-- Run started: 2026-11-20T13:26:17.060414+00:00
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
SELECT p.id, 'https://i.redd.it/dr9a2cv9g32i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xvw0vdv9g32i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/we6kadv9g32i1.jpeg', 'https://preview.redd.it/we6kadv9g32i1.jpeg?width=960&auto=webp&s=f4fa52769fbe95d00cd2999a452b5dc427171cd1', 960, 539, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k36sncv9g32i1.jpeg', 'https://preview.redd.it/k36sncv9g32i1.jpeg?width=960&auto=webp&s=66f83d1e673c31da9925407c234c34d44f570580', 960, 960, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xya688'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ou4e9t9zi32i1.jpeg', 'https://preview.redd.it/ou4e9t9zi32i1.jpeg?width=960&auto=webp&s=3a69ac874092f61dd752f6a8fac2fa559f513c71', 960, 1200, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l7ws5cw7j32i1.jpeg', 'https://preview.redd.it/l7ws5cw7j32i1.jpeg?width=960&auto=webp&s=82785df0ac0fafe34608ffd974eefeced7b4ce06', 960, 726, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7cy8m753j32i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/093uhrs1j32i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/72n8jigej32i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/te5sua0dj32i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/df1cs8cfj32i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n8f4xkk6j32i1.jpeg', NULL, NULL, NULL, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/298drx9tj32i1.jpeg', NULL, NULL, NULL, 8, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyakp3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oxmwxkx8n32i1.jpeg', 'https://preview.redd.it/oxmwxkx8n32i1.jpeg?width=960&auto=webp&s=233f17f42cf4ef472ca527da3ce95b68de521369', 960, 960, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mwxahkx8n32i1.jpeg', 'https://preview.redd.it/mwxahkx8n32i1.jpeg?width=960&auto=webp&s=25c74e5c80833c1e137b46d7680383744e43aa66', 960, 960, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyaxmy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/axwkch2yj52i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5qclju5yj52i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vjwh0f8yj52i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h0gvkiayj52i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ob5ftacyj52i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hmyhkvdyj52i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/p0y19dfyj52i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9k44j4hyj52i1.jpeg', NULL, NULL, NULL, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyhc3f'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cie2a8fd862i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i0bkgihd862i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9wqdgoid862i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t959a5kd862i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyjw31'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w78wwbu9i62i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tdg7n62ai62i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyl3tu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/4_rLSBcrsXbXcj8hvYdOknazQw3ZVhlUuuDnxX65ONw.jpeg?auto=webp&s=7681f12af006926ddb1e8c7972dee571e226134d', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyo0a1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mzcn7fgt672i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ysgtdjt672i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yoxqmpkt672i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6q0cw1mt672i1.jpeg', 'https://preview.redd.it/6q0cw1mt672i1.jpeg?width=960&auto=webp&s=44b24c8be39339f2ae2db3f28c118c7f41ab6a37', 960, 1278, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyolqv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ijv7rdav972i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyp27u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/quftjk3xh72i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyq9y3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/llhaexh6j72i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tagrdyh6j72i1.jpeg', 'https://preview.redd.it/tagrdyh6j72i1.jpeg?width=960&auto=webp&s=b35b13bd07f77bebca8f99e216f197c4b2bc287c', 960, 917, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ws0clxh6j72i1.jpeg', 'https://preview.redd.it/ws0clxh6j72i1.jpeg?width=960&auto=webp&s=74efc34b931fd894c8c5e0299d8526f30aadedc6', 960, 949, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fuynexh6j72i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ds1x0xh6j72i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qmnwlxh6j72i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mpygtwh6j72i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mgav0xh6j72i1.jpeg', 'https://preview.redd.it/mgav0xh6j72i1.jpeg?width=960&auto=webp&s=728886f84c6849f518436e311eea3351d365bfda', 960, 960, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyqgtu'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x0uqw5fss72i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yx7016fss72i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cg4cy7fss72i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s39tk5fss72i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xyrw99'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yqsbhau0q92i1.jpeg', 'https://preview.redd.it/yqsbhau0q92i1.jpeg?width=960&auto=webp&s=7f954c9c432a568a46081b1cea9aba389a95a5e2', 960, 562, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz1hhh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/l68euoz7ba2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/odu72lk8ba2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/spg9zh29ba2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/uwly3gg9ba2i1.jpeg', 'https://cf.preview.redd.it/uwly3gg9ba2i1.jpeg?width=960&auto=webp&s=73eb60c0f06d0a9e9f91992aa1919a4a7f8e2624', 960, 540, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8npq3tt9ba2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/utjs3oeaba2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/12sz0ttaba2i1.jpeg', 'https://cf.preview.redd.it/12sz0ttaba2i1.jpeg?width=960&auto=webp&s=550cc042f928fc82fac35e9392d9b5218107c7f6', 960, 1225, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ugpz936bba2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1b91uzmbba2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz412u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j7jagislea2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4e5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ds56cqtlea2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4e5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sj4e2vulea2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4e5x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bk1wh4aaha2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6htdzebaha2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wrysimcaha2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z3xzjqdaha2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aexad4faha2i1.jpeg', NULL, NULL, NULL, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/b7ztu9gaha2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2c6f1dhaha2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jm0obliaha2i1.jpeg', NULL, NULL, NULL, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h7mi7ojaha2i1.jpeg', NULL, NULL, NULL, 8, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xxxmzrkaha2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qrf30fmaha2i1.jpeg', NULL, NULL, NULL, 10, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tar7rpnaha2i1.jpeg', NULL, NULL, NULL, 11, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xz4ozi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8m2et1wl2h2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzwum3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0jf1fkwbch2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gavzglwbch2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/reqhnjwbch2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dute2owbch2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzxz22'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/MIrLjRIfDQNVU8XqfuAxgrTGc9W8RDM7lpf9XxGJ9vc.jpeg?format=pjpg&auto=webp&s=0f51e8e9e4c49d39ff4a87a42219ec063cb984c3', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzin7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ed15kg2ush2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/139uog2ush2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lj9rug2ush2i1.jpeg', 'https://preview.redd.it/lj9rug2ush2i1.jpeg?width=960&auto=webp&s=bd5ecd5a90c34807b3eb13daf6de53955ef65832', 960, 1200, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/awjdhh2ush2i1.jpeg', NULL, NULL, NULL, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m7b2bi2ush2i1.jpeg', 'https://preview.redd.it/m7b2bi2ush2i1.jpeg?width=960&auto=webp&s=8cea06ece1f49cee49b3fd64fa18c3aadfa11dc8', 960, 960, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0s341h2ush2i1.jpeg', NULL, NULL, NULL, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/95g09h2ush2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1wl85h2ush2i1.jpeg', 'https://preview.redd.it/1wl85h2ush2i1.jpeg?width=960&auto=webp&s=fae06a6a227f21a0f2eed53a3fb9ff32e71e4b02', 960, 1438, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/72073j2ush2i1.jpeg', 'https://preview.redd.it/72073j2ush2i1.jpeg?width=960&auto=webp&s=dfa46681fb4dde2a15bbc5be8a54e570a15c4aed', 960, 1440, 8, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xzzszt'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/c7h9b8kqxh2i1.png', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/w3k59bkqxh2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g8f1g9kqxh2i1.jpeg', 'https://preview.redd.it/g8f1g9kqxh2i1.jpeg?width=960&auto=webp&s=5579a6d74eac86fc7a2a39a1cc2db6dedf14b608', 960, 540, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9qhixakqxh2i1.png', 'https://preview.redd.it/9qhixakqxh2i1.png?width=960&auto=webp&s=bbcfb6fd199b498211f380e941c8047e1808af10', 960, 580, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bj2oz7kqxh2i1.jpeg', 'https://preview.redd.it/bj2oz7kqxh2i1.jpeg?width=960&auto=webp&s=a2568243f95f31fce07fe12a4bc8e43eb9c2d218', 960, 600, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ovhwt8kqxh2i1.jpeg', 'https://preview.redd.it/ovhwt8kqxh2i1.jpeg?width=960&auto=webp&s=9bd8afa818feca782a095197bf54c80e88408560', 960, 1359, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i6oyc8kqxh2i1.jpeg', NULL, NULL, NULL, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aokiw7kqxh2i1.jpeg', 'https://preview.redd.it/aokiw7kqxh2i1.jpeg?width=960&auto=webp&s=79d8e3f4d8e3db69ba34662ad7d48c82e6d16b16', 960, 1440, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kdeht7kqxh2i1.jpeg', 'https://preview.redd.it/kdeht7kqxh2i1.jpeg?width=960&auto=webp&s=97759b469734c8888cc1425133efbcc174964db8', 960, 540, 8, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tvm2z8kqxh2i1.jpeg', NULL, NULL, NULL, 9, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/glvv4akqxh2i1.jpeg', 'https://preview.redd.it/glvv4akqxh2i1.jpeg?width=960&auto=webp&s=7802ca1d87564ddb447bc1ce0bcdeaf65db91d91', 960, 540, 10, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/o504n8kqxh2i1.jpeg', 'https://preview.redd.it/o504n8kqxh2i1.jpeg?width=960&auto=webp&s=a95ab243e2d9e1198ca7d028744f12d9abcb81c6', 960, 502, 11, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i73ut8kqxh2i1.jpeg', 'https://preview.redd.it/i73ut8kqxh2i1.jpeg?width=960&auto=webp&s=d433b8715603d46019a919805a69070701deec16', 960, 520, 12, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nju8l9kqxh2i1.jpeg', 'https://preview.redd.it/nju8l9kqxh2i1.jpeg?width=960&auto=webp&s=e49e67f78d6a1932be4550b30dd22fd6b931eaac', 960, 520, 13, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kareo8kqxh2i1.jpeg', 'https://preview.redd.it/kareo8kqxh2i1.jpeg?width=960&auto=webp&s=764a699d74b62b899aafd9e24eb5ab99b363dda9', 960, 520, 14, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7sld28kqxh2i1.jpeg', 'https://preview.redd.it/7sld28kqxh2i1.jpeg?width=960&auto=webp&s=62d6e08c15a08c7685674cce5ea5f49c32746de1', 960, 2262, 15, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j7zpm9kqxh2i1.jpeg', 'https://preview.redd.it/j7zpm9kqxh2i1.jpeg?width=960&auto=webp&s=d4dec7930f7900c06b9281d5fe0af67f48eb686f', 960, 1652, 16, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/wjnlq8kqxh2i1.jpeg', 'https://preview.redd.it/wjnlq8kqxh2i1.jpeg?width=960&auto=webp&s=2947573a1bd7cb560a63d23f2f8f5245405f35c1', 960, 688, 17, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/n415t8kqxh2i1.jpeg', 'https://preview.redd.it/n415t8kqxh2i1.jpeg?width=960&auto=webp&s=f56170e95a4b6aea4e6cbaf64fb95ad79cadb186', 960, 1338, 18, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ga6tz7kqxh2i1.jpeg', NULL, NULL, NULL, 19, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00gpz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/h0gwhexm3i2i1.jpeg', NULL, NULL, NULL, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zduvmrym3i2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7x1n0pzm3i2i1.jpeg', NULL, NULL, NULL, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y00xk3'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1ftxb556ki2i1.jpeg', 'https://preview.redd.it/1ftxb556ki2i1.jpeg?width=960&auto=webp&s=3598e3e8e0fb93e059b71ad3721eb4642a2b23a5', 960, 690, 0, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/orniv556ki2i1.jpeg', NULL, NULL, NULL, 1, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/autmq456ki2i1.jpeg', 'https://preview.redd.it/autmq456ki2i1.jpeg?width=960&auto=webp&s=08eaf57358f877a8bdd23f789eb4193b69c2b07c', 960, 720, 2, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/k9ywf556ki2i1.jpeg', 'https://preview.redd.it/k9ywf556ki2i1.jpeg?width=960&auto=webp&s=0c89c4e4c11e2083a823239087537af7f0e6e114', 960, 720, 3, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bm4gp556ki2i1.jpeg', 'https://preview.redd.it/bm4gp556ki2i1.jpeg?width=960&auto=webp&s=fef40807a451f4c45037e2f3c5ac401124adae55', 960, 720, 4, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6330fd56ki2i1.jpeg', 'https://preview.redd.it/6330fd56ki2i1.jpeg?width=960&auto=webp&s=ec3fe555890acac77e1bc92ad4cf97d4393a47ca', 960, 720, 5, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/65wp3d56ki2i1.jpeg', 'https://preview.redd.it/65wp3d56ki2i1.jpeg?width=960&auto=webp&s=c310b2eaaca1cab6df99708fb2f403af8b0d88b7', 960, 720, 6, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/y5gykc56ki2i1.jpeg', 'https://preview.redd.it/y5gykc56ki2i1.jpeg?width=960&auto=webp&s=c9906a8fafebe52cfb2afbca8c9a0f3312056152', 960, 720, 7, '2026-11-20 13:26:55', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y02ivz'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
