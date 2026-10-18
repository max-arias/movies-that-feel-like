-- 0267_seed_20261018T184704Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T18:47:36.698421+00:00
-- Run started: 2026-10-18T18:47:04.118182+00:00
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
SELECT p.id, 'https://preview.redd.it/x1a0hoqp94uh1.jpg?width=640&format=pjpg&auto=webp&s=9f8ebb4e91b171a569b181b4512e17b1584e34ff', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6a8uiwtp94uh1.jpg?width=630&format=pjpg&auto=webp&s=af1385dd427e02b0d0275f3f5953f5d921fa43fd', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fvkx8nwp94uh1.jpg?width=735&format=pjpg&auto=webp&s=d373fd9638de0d3ac31fe19efe3b131f6fdaa04d', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/321x7hyp94uh1.jpg?width=640&format=pjpg&auto=webp&s=c5457a24b492a3802c28280782ead84a87473a01', NULL, NULL, NULL, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x09j63'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xyaafnr246uh1.jpg?width=736&format=pjpg&auto=webp&s=59d7b3e7d53ffca25774292c5fc2cedadf685549', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/u0kwu8w246uh1.jpg?width=736&format=pjpg&auto=webp&s=24b6d32902c737a1fb6d1f5764935aa7ac403818', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cm9zsqy246uh1.jpg?width=640&format=pjpg&auto=webp&s=8f67d3e14ae34f89566c8759138a0e1300abd59d', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/5eesb82346uh1.jpg?width=736&format=pjpg&auto=webp&s=9ca36d7e8ef29015ccf367a821eeb850601af9ea', NULL, NULL, NULL, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0h8tq'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bcc0mwzpj6uh1.jpg?width=736&format=pjpg&auto=webp&s=27f3d32e54233bfaca0ffa2319d8f7f8ef7fa811', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/o7tubc4qj6uh1.jpg?width=736&format=pjpg&auto=webp&s=6107a83e2e0fb3ca0bf13e9e25c371f0d2103e04', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/emj8ki7qj6uh1.jpg?width=640&format=pjpg&auto=webp&s=9989a94fc7926c813116acdd49a02e22d001c136', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0is12'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/qrdag2vl38uh1.jpg?width=736&format=pjpg&auto=webp&s=3a02eb12eb45ff8820525c29d243f1f25ca23a22', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ytf51mxl38uh1.jpg?width=621&format=pjpg&auto=webp&s=af69fba8f504b9c02a36adc35b1fd3f6b2b9022e', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/1ftsrpzl38uh1.jpg?width=500&format=pjpg&auto=webp&s=d51c7c7e98c15aacba94a49a64ad1d3c0cca109b', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0npqf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ydufz9phm8uh1.jpg?width=640&format=pjpg&auto=webp&s=1b550bfd4aa29c7d69f7075dcb15b3017ac7de15', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ydcad9phm8uh1.jpg?width=736&format=pjpg&auto=webp&s=7afaef27094797921ff718abaade77e266230a2a', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ribqedphm8uh1.jpg?width=736&format=pjpg&auto=webp&s=ed81897df2e3c00346ab61ddaf7a2413421e3714', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ha8g4cphm8uh1.jpg?width=735&format=pjpg&auto=webp&s=f943c8dc26bea8448e7b50fca700ba925a324045', NULL, NULL, NULL, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/42181bphm8uh1.jpg?width=1200&format=pjpg&auto=webp&s=40523f5b85916a937ba71969fca2e8e87cf9be71', 'https://preview.redd.it/42181bphm8uh1.jpg?width=960&crop=smart&auto=webp&s=73c48eb274ce8765749447d2d9d0691a5fa4c0da', 960, 958, 4, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tmgzacphm8uh1.jpg?width=1200&format=pjpg&auto=webp&s=d499784edbbb3e6389af795ad4f87de601a7c22c', 'https://preview.redd.it/tmgzacphm8uh1.jpg?width=960&crop=smart&auto=webp&s=c82a48de9cecda68860f495cace0ffab788a4b93', 960, 958, 5, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4b6vuaphm8uh1.jpg?width=736&format=pjpg&auto=webp&s=a3aa6c565d0123852b59b296858883a1063b20a1', NULL, NULL, NULL, 6, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0ppgi'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/meo99sv37auh1.jpg?width=735&format=pjpg&auto=webp&s=599ac3bf56c23b0abc351ce6f3522dbf91ce3717', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/45el2zz37auh1.jpg?width=736&format=pjpg&auto=webp&s=e936aae9f500218f4cbf111c59866adebaede8bf', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/06xhmt147auh1.jpg?width=736&format=pjpg&auto=webp&s=69bd064381f58abb69f0756834814473db0ae6f1', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/mqqehn447auh1.jpg?width=736&format=pjpg&auto=webp&s=12e602dc4f21b350068ba4d167ade1820ce11c83', NULL, NULL, NULL, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7r5rx7847auh1.jpg?width=2800&format=pjpg&auto=webp&s=e660c3bc884f7eef96d4994c9171cb903b68a6c7', 'https://preview.redd.it/7r5rx7847auh1.jpg?width=960&crop=smart&auto=webp&s=3995ca396d69a411daa1a7ffcb31ba762a21a1b5', 960, 1440, 4, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xnh5'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t83v7vt18auh1.jpg?width=1080&format=pjpg&auto=webp&s=e0c9743d7c359c62e75eef4b2dddbae35a8e354e', 'https://preview.redd.it/t83v7vt18auh1.jpg?width=960&crop=smart&auto=webp&s=5c1a55ace70f06def209178776d2d16da055f5c9', 960, 1064, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3tmylqy18auh1.jpg?width=1960&format=pjpg&auto=webp&s=096fac4cf474c5f62d4921b3194aff4d89f533f7', 'https://preview.redd.it/3tmylqy18auh1.jpg?width=960&crop=smart&auto=webp&s=87e2fa311680e1a5c8cefba3b1487621582f883e', 960, 640, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vmj2ya328auh1.jpg?width=711&format=pjpg&auto=webp&s=b5a12443b81866a515898588e2d1d903c6d8ed78', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kchmru628auh1.png?width=1920&format=png&auto=webp&s=6486b0dcabb196b1668e3c1f2c4788ddfaebd043', 'https://preview.redd.it/kchmru628auh1.png?width=960&crop=smart&auto=webp&s=bf98d11f462defe75e4001159466483e42ee65c5', 960, 540, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6oe8b1o28auh1.jpg?width=415&format=pjpg&auto=webp&s=98d39f6c3fb525507f959a70a5bc34422500bac6', NULL, NULL, NULL, 4, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7tk9k4r28auh1.jpg?width=900&format=pjpg&auto=webp&s=f0421dc5e94855d9dfcfa307abb2eb71077d0ddf', NULL, NULL, NULL, 5, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y9pht6t28auh1.jpg?width=1170&format=pjpg&auto=webp&s=acb6fea5ed6e0179a3c4714e2a4a3e0e2ab09116', 'https://preview.redd.it/y9pht6t28auh1.jpg?width=960&crop=smart&auto=webp&s=21768348d1eeacc198f7613e33e3a0a671cf4f21', 960, 640, 6, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/g730hqv28auh1.jpg?width=900&format=pjpg&auto=webp&s=c00a6dd7a7d7fe5288574e4baa5d66a6dc2be319', NULL, NULL, NULL, 7, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0xsia'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/go11s7q1rbuh1.jpg?width=736&format=pjpg&auto=webp&s=00bbae10aa14301f11e6c1372c232de374314da2', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/bh0320t1rbuh1.jpg?width=564&format=pjpg&auto=webp&s=075ee91a788b6ee5d80133a4e7652961ad5ca8fe', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ez992tu1rbuh1.jpg?width=736&format=pjpg&auto=webp&s=edcafd61bd58ff88ae6306b7ae2cef0d84c22502', NULL, NULL, NULL, 2, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/h22co8w1rbuh1.jpg?width=736&format=pjpg&auto=webp&s=b6f8adbfc32911f91b26e4d203b0860ac10515dd', NULL, NULL, NULL, 3, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x15j62'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/w4yuo9ng1cuh1.jpg?width=736&format=pjpg&auto=webp&s=5ffb9ce8f6d598f9710de048ff123cef0307059b', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vepx39ng1cuh1.jpg?width=500&format=pjpg&auto=webp&s=c934c2c3efdfe82622cd145dd90efad1b0c92285', NULL, NULL, NULL, 1, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x16sog'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/z8in1g2neeuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1fg2x'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/s6fxbkeg0fuh1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 18:47:36', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x1hd5j'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
