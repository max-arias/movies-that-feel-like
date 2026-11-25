-- 0453_seed_20261125T143711Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-11-25T14:37:42.988511+00:00
-- Run started: 2026-11-25T14:37:11.486674+00:00
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
SELECT p.id, 'https://i.redd.it/a8ow7gxnhg3i1.jpeg', 'https://preview.redd.it/a8ow7gxnhg3i1.jpeg?width=960&auto=webp&s=ed78fdd8bcf4407bdc0ee3f24da1f5bb1ff3ccf6', 960, 768, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/j6t8wfxnhg3i1.jpeg', 'https://preview.redd.it/j6t8wfxnhg3i1.jpeg?width=960&auto=webp&s=cefe51b1f9e0ea87675d91d580a4513caeec397d', 960, 784, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/jov2xhxnhg3i1.jpeg', 'https://preview.redd.it/jov2xhxnhg3i1.jpeg?width=960&auto=webp&s=842ead11660769d0cbdde4c019b805bea90a067c', 960, 934, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/zwxq0hxnhg3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y3z7w1'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9dxotef51h3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2dzrdef51h3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z35i7ef51h3i1.jpeg', 'https://preview.redd.it/z35i7ef51h3i1.jpeg?width=960&auto=webp&s=0f77841e24a2d4ca7927ffe7135497d453c12ac0', 960, 408, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z7fxhef51h3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/fhpa3gf51h3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z6t19ff51h3i1.jpeg', NULL, NULL, NULL, 5, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/agdi0ef51h3i1.jpeg', NULL, NULL, NULL, 6, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4fldmef51h3i1.jpeg', 'https://preview.redd.it/4fldmef51h3i1.jpeg?width=960&auto=webp&s=b968e77e380d112af7b89f0b8685aaf5ca062115', 960, 504, 7, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/2qzzpef51h3i1.jpeg', NULL, NULL, NULL, 8, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41gre'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nuikmcav4h3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/9f4pqaav4h3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/trmb6aav4h3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/elr2bbav4h3i1.jpeg', NULL, NULL, NULL, 3, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/6b7jrcav4h3i1.jpeg', NULL, NULL, NULL, 4, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/xxz85cav4h3i1.jpeg', NULL, NULL, NULL, 5, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y41w1u'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/57ft2m75qh3i1.png', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/1lyl8sh7qh3i1.png', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/0bgljcphqh3i1.png', NULL, NULL, NULL, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ht3n2aaxqh3i1.png', 'https://preview.redd.it/ht3n2aaxqh3i1.png?width=960&auto=webp&s=ce41f9c907584922d4cc8bd7c09c569b39ea3d26', 960, 674, 3, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y45ajb'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/gdezuwzkbi3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y46dao'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/nn0rifz4pj3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/oqc89i15pj3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/7isu7i25pj3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4avb7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/e49hdxsj3k3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/bqjtc7wj3k3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/4y7y0ayj3k3i1.jpeg', NULL, NULL, NULL, 2, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4cdt9'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/idn8s42xxk3i1.jpeg', NULL, NULL, NULL, 0, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/eiioxp7xxk3i1.jpeg', NULL, NULL, NULL, 1, '2026-11-25 14:37:42', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1y4gb4y'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
