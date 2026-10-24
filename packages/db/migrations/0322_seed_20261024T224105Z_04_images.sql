-- 0322_seed_20261024T224105Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-24T22:41:42.982322+00:00
-- Run started: 2026-10-24T22:41:05.797889+00:00
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
SELECT p.id, 'https://i.redd.it/kok7rafj71xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jylcavlj71xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/g4bsyloj71xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/sfskc6uj71xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0czsrzyj71xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0q63ef2k71xh1.jpeg', NULL, NULL, NULL, 5, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1eqs8g5k71xh1.jpeg', NULL, NULL, NULL, 6, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ggxe64bk71xh1.jpeg', NULL, NULL, NULL, 7, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0p7my0ek71xh1.jpeg', NULL, NULL, NULL, 8, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7bkeh7hk71xh1.jpeg', NULL, NULL, NULL, 9, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/r63026kk71xh1.jpeg', NULL, NULL, NULL, 10, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6skdaqnk71xh1.jpeg', NULL, NULL, NULL, 11, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bj08rrqk71xh1.jpeg', NULL, NULL, NULL, 12, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/qcdbwmtk71xh1.jpeg', NULL, NULL, NULL, 13, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oytc0xwk71xh1.jpeg', NULL, NULL, NULL, 14, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/pflet80l71xh1.jpeg', NULL, NULL, NULL, 15, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m0z4dz3l71xh1.jpeg', NULL, NULL, NULL, 16, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7tccaz7l71xh1.jpeg', NULL, NULL, NULL, 17, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jrq92qal71xh1.jpeg', NULL, NULL, NULL, 18, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ul61yvdl71xh1.jpeg', NULL, NULL, NULL, 19, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xckn0q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/diaifss6d1xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fznke217d1xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fknbxy47d1xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/cs4m9a77d1xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tirlv997d1xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/vphlwkc7d1xh1.jpeg', NULL, NULL, NULL, 5, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1amcttg7d1xh1.jpeg', NULL, NULL, NULL, 6, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nk9fb5l7d1xh1.jpeg', NULL, NULL, NULL, 7, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s2zyswn7d1xh1.jpeg', NULL, NULL, NULL, 8, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xclhdb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/q1ki01b8z1xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zdyfe1b8z1xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/x1ita8b8z1xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bz7511b8z1xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/22pvd1b8z1xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/aiq2l7b8z1xh1.jpeg', NULL, NULL, NULL, 5, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/yydyo3b8z1xh1.jpeg', NULL, NULL, NULL, 6, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcouuc'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/snsolx0l12xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcp8n5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/czWW1xaRCWQiE0wre_qnVT-zgEpPYorvqeVAWusnZUo.jpeg?format=pjpg&auto=webp&s=e7acba934a3f1dd3e30de305d471571fec85b131', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcpv70'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/m3xdn8d3ouwh1.png', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcq9vy'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ckqubmsxb2xh1.jpeg', 'https://preview.redd.it/ckqubmsxb2xh1.jpeg?width=960&auto=webp&s=68a14c774b71cdc45c17db3eb306a53683bafc12', 960, 1280, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcqspv'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/d267s55jl2xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xcs965'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8u8hhk48b4xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/tru370d8b4xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nonf0gk8b4xh1.png', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jmi97js8b4xh1.png', NULL, NULL, NULL, 3, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd0grd'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/kybjqy87j4xh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/i7o19y87j4xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ja6k3z87j4xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1d3s'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/a634qaup1ywh1.jpeg', NULL, NULL, NULL, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/8qc6si1q1ywh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1qpa'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ts4olh1vm4xh1.jpeg', 'https://preview.redd.it/ts4olh1vm4xh1.jpeg?width=960&auto=webp&s=a86e14d5412c96818366fe784a024006c78970f2', 960, 1522, 0, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/hfzi2p7vm4xh1.jpeg', NULL, NULL, NULL, 1, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/lzhg6lavm4xh1.jpeg', NULL, NULL, NULL, 2, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/75tswcdvm4xh1.jpeg', NULL, NULL, NULL, 3, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/t3m69cgvm4xh1.jpeg', NULL, NULL, NULL, 4, '2026-10-24 22:41:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1xd1s92'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
