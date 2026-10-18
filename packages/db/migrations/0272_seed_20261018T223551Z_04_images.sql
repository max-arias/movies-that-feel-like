-- 0272_seed_20261018T223551Z_04_images.sql: data seed from pipeline:load run.
-- Generated:  2026-10-18T22:36:18.079734+00:00
-- Run started: 2026-10-18T22:35:51.477994+00:00
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
SELECT p.id, 'https://external-preview.redd.it/b3RhdHl4dnk2eXRoMe3z8EAKGPmjSNOPm7Tm9KQVzk7qLVUmO4376Ysld1lV.png?format=pjpg&auto=webp&s=bdc3c53f1324fe810637d6ca8fb2368447bb7ff8', 'https://external-preview.redd.it/b3RhdHl4dnk2eXRoMe3z8EAKGPmjSNOPm7Tm9KQVzk7qLVUmO4376Ysld1lV.png?width=960&crop=smart&format=pjpg&auto=webp&s=3bbce6b4c857b98c9e09ea065ea0d70fe4f5052e', 960, 711, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzjzwf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hbb9ag6s8yth1.jpg?width=500&format=pjpg&auto=webp&s=1493b3cbd1fa57cb35facdc3e9b80937ff1daf91', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/tzrq2i6s8yth1.jpg?width=563&format=pjpg&auto=webp&s=4386960c3c5be0ace3bfcb7d538c245476f1b7bb', NULL, NULL, NULL, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rtnfnk6s8yth1.jpg?width=500&format=pjpg&auto=webp&s=e56b491444edb93a7d15397abd7a408258091d25', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/10velm6s8yth1.jpg?width=533&format=pjpg&auto=webp&s=a50ede8febd7835fe6ac3e0668069f3df5269cbb', NULL, NULL, NULL, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fdrztu6s8yth1.jpg?width=1170&format=pjpg&auto=webp&s=638265d8cf027ac4bbb313cbdaec7f61057200e8', 'https://preview.redd.it/fdrztu6s8yth1.jpg?width=960&crop=smart&auto=webp&s=89cb91afb049e2045c9078f62ee95abc677d82d7', 960, 942, 4, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xo3k3l6s8yth1.jpg?width=1200&format=pjpg&auto=webp&s=e2abb2039b33f3b5c65b0a3e9a3ffe3a385a42e5', 'https://preview.redd.it/xo3k3l6s8yth1.jpg?width=960&crop=smart&auto=webp&s=f8cb659658707a2d8f2f0a62edf3858001613fbf', 960, 640, 5, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/c4il8u6s8yth1.jpg?width=465&format=pjpg&auto=webp&s=1b15718f7edea8f3d94861d536900bbf469c7a4a', NULL, NULL, NULL, 6, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/jmmzzp6s8yth1.jpg?width=640&format=pjpg&auto=webp&s=992451e6948db03de20a3a905af65f0d7b2008b0', NULL, NULL, NULL, 7, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ibu4hs6s8yth1.jpg?width=480&format=pjpg&auto=webp&s=d8ffddd36d18b2c127a56328cbb7d6482feb9bfc', NULL, NULL, NULL, 8, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/s4s99s6s8yth1.jpg?width=736&format=pjpg&auto=webp&s=8fab37369a85bc1f2646824436b4802344b599d3', NULL, NULL, NULL, 9, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzk71q'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/dg38ne7gayth1.jpeg', 'https://preview.redd.it/dg38ne7gayth1.jpeg?width=960&crop=smart&auto=webp&s=d4d4e7ddbe6e1adc6f46a7bdbdff4c26bd68d8cb', 960, 540, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkdkf'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/mhi1vh4fcyth1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkldw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ilh8omkaeyth1.png', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzkug6'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/twmiw2js0zth1.jpg?width=736&format=pjpg&auto=webp&s=4c970e868cef074e4b354c029fd43903e29c55a8', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3a2s9bns0zth1.jpg?width=2800&format=pjpg&auto=webp&s=243675267dee9d2a987ff1df912f69862e2cd649', 'https://preview.redd.it/3a2s9bns0zth1.jpg?width=960&crop=smart&auto=webp&s=e1787200fe4bd43fd90a879deb015085552bebb0', 960, 1440, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/6slm11ss0zth1.jpg?width=735&format=pjpg&auto=webp&s=37fbb8e686e868fda1343551e74ec1934b9713f3', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzn5ax'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/5rhw0ktoazth1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzo3az'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/526o08akkzth1.jpeg', 'https://preview.redd.it/526o08akkzth1.jpeg?width=960&crop=smart&auto=webp&s=22ddc184004cf934466d686722deaef5c6c34c4d', 960, 1437, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzozrh'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/cz2cegse30uh1.jpg?width=1080&format=pjpg&auto=webp&s=e956f60666f24a4a9d59b52574c2ab22ac99245c', 'https://preview.redd.it/cz2cegse30uh1.jpg?width=960&crop=smart&auto=webp&s=23c30c59cd34af8fd4411c146a80e016a510074a', 960, 1199, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/46uobese30uh1.jpg?width=1600&format=pjpg&auto=webp&s=cb849d24f7fbbf97a4f9548d09306c9a6ba11471', 'https://preview.redd.it/46uobese30uh1.jpg?width=960&crop=smart&auto=webp&s=bfc01649723b3b59e2dcdebf9f8d75840e8d615a', 960, 1440, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fwsokgse30uh1.jpg?width=703&format=pjpg&auto=webp&s=34240c8935d97310dc56c4b63a4e7fc97412096f', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3wk62fse30uh1.jpg?width=522&format=pjpg&auto=webp&s=99ab686a4a502c79d45a8ab2d2db72a5d652de26', NULL, NULL, NULL, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0698rfse30uh1.jpg?width=736&format=pjpg&auto=webp&s=ed21bfa253578acd564ac5a45df53c82e0bf5c4d', NULL, NULL, NULL, 4, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/rmjzvgse30uh1.jpg?width=640&format=pjpg&auto=webp&s=a43e8884ca7ab6bdfb3911bf56b9576dcb537ed3', NULL, NULL, NULL, 5, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/xgldzdse30uh1.jpg?width=410&format=pjpg&auto=webp&s=4c96d2231e0c53fad6fa71e822d6329363a13eff', NULL, NULL, NULL, 6, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/ogoy4ese30uh1.jpg?width=828&format=pjpg&auto=webp&s=233b8e9747e9ca538977d3cf8cbe99bf0f2084e9', NULL, NULL, NULL, 7, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/vud7ygse30uh1.jpg?width=390&format=pjpg&auto=webp&s=311eadc176872a50d09dfc125dacd84e7baa6e74', NULL, NULL, NULL, 8, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzqmkw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0jz3n1fm91uh1.jpg?width=512&format=pjpg&auto=webp&s=a633f7f4e491129d0162e66308ceb702bc09fa82', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/3mgylhjm91uh1.jpg?width=1280&format=pjpg&auto=webp&s=308afccc79b331626f9289303bc427fe6e9d354c', 'https://preview.redd.it/3mgylhjm91uh1.jpg?width=960&crop=smart&auto=webp&s=1b9d103df1d25d6b1bbd1bdc29792ca47cdcaf9a', 960, 540, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/exqtednm91uh1.jpg?width=728&format=pjpg&auto=webp&s=2453251db4929ff055d04b9c90524c5e964f2ba7', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0y9pg4sm91uh1.jpg?width=1080&format=pjpg&auto=webp&s=90a584796e0230d3c08aa3eae864d6d437ccc3cb', 'https://preview.redd.it/0y9pg4sm91uh1.jpg?width=960&crop=smart&auto=webp&s=f5b2fd32a6035a4698f7d0b30d29de229bf1d06f', 960, 1920, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzuepj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/yjkc5jykc2uh1.jpg?width=1200&format=pjpg&auto=webp&s=77ef31c401a2ba2bb2028d62f6bdcaa4c0315a76', 'https://preview.redd.it/yjkc5jykc2uh1.jpg?width=960&crop=smart&auto=webp&s=8ad2dffe456bc9c5761648695b2b766c75d53146', 960, 1280, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/kwmkjhykc2uh1.jpg?width=900&format=pjpg&auto=webp&s=7b6317d40a16f75cde5c668c9ecc780bd0eb5cd0', NULL, NULL, NULL, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/9fajcfykc2uh1.jpg?width=772&format=pjpg&auto=webp&s=7db33c489ba5df4ec8d1a12849f898dfd1cf9bba', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/i95aagykc2uh1.jpg?width=736&format=pjpg&auto=webp&s=941f1ebb8a7d1a198f6d49f14e9795151d6b4306', NULL, NULL, NULL, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/w0cf3hykc2uh1.jpg?width=1199&format=pjpg&auto=webp&s=31d2c1778255a98258c24e7d7318f6b4028798dd', 'https://preview.redd.it/w0cf3hykc2uh1.jpg?width=960&crop=smart&auto=webp&s=558ea2c45a5df58c3e75109101a97907f72e35e4', 960, 511, 4, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/zae0tfykc2uh1.jpg?width=1199&format=pjpg&auto=webp&s=4b3a5a4c67be56f283b636eecb0895674fec7fa4', 'https://preview.redd.it/zae0tfykc2uh1.jpg?width=960&crop=smart&auto=webp&s=01964c6a46d4dbbdd004c79be9938bb592721e09', 960, 640, 5, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzgdw'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/28q5orv9g2uh1.jpeg', 'https://preview.redd.it/28q5orv9g2uh1.jpeg?width=960&crop=smart&auto=webp&s=c858c181be75b2fd8b6026dd6efdd1ee6bfb2918', 960, 1422, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1wzzzuj'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/l2brb62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=ab491958eeb185be3c3dbcaf6404d9892535c520', 'https://preview.redd.it/l2brb62du9th1.jpg?width=960&crop=smart&auto=webp&s=7ce82bc69a173c4a338f9ec58572f5c4ce2d083a', 960, 1286, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/53a1k62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=ef58b3ae7a3db840517323152575c706f0a18de9', 'https://preview.redd.it/53a1k62du9th1.jpg?width=960&crop=smart&auto=webp&s=5d8aecda9533f35eb148f68d58a9ac889359e1e4', 960, 1281, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/81iw272du9th1.jpg?width=1320&format=pjpg&auto=webp&s=05a3b35adc71227bd5a7cd65f34314cb8fea8042', 'https://preview.redd.it/81iw272du9th1.jpg?width=960&crop=smart&auto=webp&s=41f715d6843760e7ae574f5677fea419fe47f98a', 960, 1272, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/hxi0p62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=038e51378f2cc5451497308bd073ee4775ab57b9', 'https://preview.redd.it/hxi0p62du9th1.jpg?width=960&crop=smart&auto=webp&s=1b92950fa4d832c366c523eb8700e9324aab1507', 960, 1272, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m7ill62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=871a910f01361585e1310a9e8b4535344a3d0585', 'https://preview.redd.it/m7ill62du9th1.jpg?width=960&crop=smart&auto=webp&s=b112312d6234768c123b118a86677481e955f110', 960, 1194, 4, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/73uki62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=54bbe6f557aa092e325ee4561249914b382a0697', 'https://preview.redd.it/73uki62du9th1.jpg?width=960&crop=smart&auto=webp&s=dc1390a08a64f7b97e59536c5bad6f2aa86af68c', 960, 1194, 5, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/4qnjd62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=c020a5d2b349ed052dcdcbeac4f0af73e63a0a53', 'https://preview.redd.it/4qnjd62du9th1.jpg?width=960&crop=smart&auto=webp&s=1074a2d5f524cd1eb5857e4026333a51e0a02451', 960, 1189, 6, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m1r0i62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=b3d97944f9fd9bed9c5418eb7f93d94728f55290', 'https://preview.redd.it/m1r0i62du9th1.jpg?width=960&crop=smart&auto=webp&s=e553361441b3f06863a0350141e17f40f50ed11f', 960, 1282, 7, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/y6n1w62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=2194ce4a5f618e12bb96bbcfca83bf49d28acdd8', 'https://preview.redd.it/y6n1w62du9th1.jpg?width=960&crop=smart&auto=webp&s=21955c783a49ded8f2f9f62468b755eacbff732d', 960, 1273, 8, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/0lgix62du9th1.jpg?width=1320&format=pjpg&auto=webp&s=777fe3dc3a659fc0302da4d0023c3a8eda9b4039', 'https://preview.redd.it/0lgix62du9th1.jpg?width=960&crop=smart&auto=webp&s=02856948d5c430e1a021e4ccd8f8bc3c8ba8d832', 960, 1274, 9, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/t7yed72du9th1.jpg?width=1320&format=pjpg&auto=webp&s=277555ba92d88300ad6fdeb7d23a3e0158adb210', 'https://preview.redd.it/t7yed72du9th1.jpg?width=960&crop=smart&auto=webp&s=d15277ac908050480df40711d49faea2fda9f932', 960, 1283, 10, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/dpmag72du9th1.jpg?width=1320&format=pjpg&auto=webp&s=f151f750c58cdad87b5cda69ef73f367f3698829', 'https://preview.redd.it/dpmag72du9th1.jpg?width=960&crop=smart&auto=webp&s=d142d21d65a46493da58fb77fc4fcfbef8b63a04', 960, 1274, 11, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x01d3d'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/fjj96ynvg3uh1.jpg?width=480&format=pjpg&auto=webp&s=9cb39094c7c2e1d027d5f72b31ae6d720640d171', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/15kkaynvg3uh1.jpg?width=972&format=pjpg&auto=webp&s=7695ba4a9124043655555fe633007d24c8485ff1', 'https://preview.redd.it/15kkaynvg3uh1.jpg?width=960&crop=smart&auto=webp&s=afb1a2d19c6f4d20c70809421c3bc32f1b76f825', 960, 1738, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/h4zejynvg3uh1.jpg?width=1170&format=pjpg&auto=webp&s=fed3d4f91d42180b5f9b24d63b79cea321e66f1c', 'https://preview.redd.it/h4zejynvg3uh1.jpg?width=960&crop=smart&auto=webp&s=bcb32ba8e66c794497352a9c669c087e2078d28a', 960, 1212, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p95z0ynvg3uh1.jpg?width=1170&format=pjpg&auto=webp&s=49a3d7919c484762a15159a3efac0a296c103e29', 'https://preview.redd.it/p95z0ynvg3uh1.jpg?width=960&crop=smart&auto=webp&s=f14b6696dc593593befef625befccde31083275f', 960, 963, 3, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x05eu7'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/87akhvbyl3uh1', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x0633o'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/m3qlhpqry3uh1.jpg?width=1024&format=pjpg&auto=webp&s=61d6d6e86482f503c6382fe845bb8b03856c825c', 'https://preview.redd.it/m3qlhpqry3uh1.jpg?width=960&crop=smart&auto=webp&s=f988e02f847a114ce2e6ce000dc77a7da2d6b4f9', 960, 960, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/7sw2cla2z3uh1.jpg?width=3000&format=pjpg&auto=webp&s=37d3e4a09b480692b7aee267dbb8824e89f582ad', 'https://preview.redd.it/7sw2cla2z3uh1.jpg?width=960&crop=smart&auto=webp&s=edcfb2383ec80ad6b6b6991b50686b5bde4df0f6', 960, 518, 1, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://preview.redd.it/p43fzebdz3uh1.jpg?width=810&format=pjpg&auto=webp&s=14d6e6919ae1ac54c1da662ce4e01077819b9595', NULL, NULL, NULL, 2, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x083cr'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://external-preview.redd.it/8gn_VjEtFhOG3ci6SnKMzIHGIc6xzLl3gB7KN2tBNhQ.jpeg?auto=webp&s=475ff265f0140f6cf50c97bdd4f2a2344d297026', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x08ogp'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
INSERT INTO "imported_post_images" ("imported_vibe_post_id", "source_url", "preview_url", "width", "height", "sort_order", "created_at", "deleted_at", "checked_at")
SELECT p.id, 'https://i.redd.it/ps8llx1syath1.jpeg', NULL, NULL, NULL, 0, '2026-10-18 22:36:17', NULL, NULL
FROM imported_vibe_posts p WHERE p."reddit_post_id" = '1x098ky'
ON CONFLICT(imported_vibe_post_id, source_url) DO UPDATE SET "preview_url"=excluded."preview_url", "width"=excluded."width", "height"=excluded."height", "sort_order"=excluded."sort_order";
