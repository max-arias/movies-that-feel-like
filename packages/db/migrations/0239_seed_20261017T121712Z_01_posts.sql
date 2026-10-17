-- 0239_seed_20261017T121712Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-10-17T12:17:44.309659+00:00
-- Run started: 2026-10-17T12:17:12.269707+00:00
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
-- Chunk: 01_posts (1/5)
-- Tables: imported_vibe_posts.
-- Pipeline-state tables (processing_runs, pipeline_artifacts)
-- are intentionally excluded — they're per-run bookkeeping.

INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x69o6y', 'That Lincoln commercial vibe', 'That Lincoln commercial vibe', '', 'Radiant-Boat-5149', 1792030135, '/r/MoviesThatFeelLike/comments/1x69o6y/that_lincoln_commercial_vibe/', 'https://www.reddit.com/gallery/1x69o6y', 'MoviesThatFeelLike', 'Sleek, moody nocturnal driving aesthetics steeped in philosophical monologue and cool urban solitude.', 'publishable', NULL, NULL, '2026-10-17 12:17:44', '2026-10-17 12:17:44')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x71kh7', 'Movies and anime that feel like this', 'Movies and anime that feel like this', '', 'Ashamed-Designer4920', 1792108860, '/r/MoviesThatFeelLike/comments/1x71kh7/movies_and_anime_that_feel_like_this/', 'https://i.redd.it/48q5n0tnzpvh1.png', 'MoviesThatFeelLike', 'Cozy, charming classic storybook animal tales full of warmth and rustic woodland wonder.', 'publishable', NULL, NULL, '2026-10-17 12:17:44', '2026-10-17 12:17:44')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x72ict', 'a teenage autumn of the past (can be spooky)', 'a teenage autumn of the past (can be spooky)', '', 'Ok-Chapter8222', 1792111520, '/r/MoviesThatFeelLike/comments/1x72ict/a_teenage_autumn_of_the_past_can_be_spooky/', 'https://www.reddit.com/gallery/1x72ict', 'MoviesThatFeelLike', 'Nostalgic, eerie teenage coming-of-age autumn days filled with crisp air and vintage spooky atmosphere.', 'publishable', NULL, NULL, '2026-10-17 12:17:44', '2026-10-17 12:17:44')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x732m6', 'Which Movie Looks Better? (Spider-Verse vs Pixar)', 'Which Movie Looks Better? (Spider-Verse vs Pixar)', 'I''m doing research on how modern 3D films are ditching photorealism for stylized, comic/hand-drawn looks (*Spider-Verse*, *Arcane*, *TMNT*) and whether audiences actually love it or get visual fatigue.

Takes literally 2 minutes. Helps an animation student collect some data  
[https://forms.gle/cz4XAzyd47Kc7c5w7](https://forms.gle/cz4XAzyd47Kc7c5w7)', 'Western_Cow8110', 1792113208, '/r/MoviesThatFeelLike/comments/1x732m6/which_movie_looks_better_spiderverse_vs_pixar/', 'https://www.reddit.com/r/MoviesThatFeelLike/comments/1x732m6/which_movie_looks_better_spiderverse_vs_pixar/', 'MoviesThatFeelLike', 'Academic and analytical inquiry into stylized animation aesthetics versus photorealism.', 'skipped', 'no enriched recommendation matches', NULL, '2026-10-17 12:17:44', '2026-10-17 12:17:44')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1x734pn', 'Movies that spend a lot of time in cars', 'Movies that spend a lot of time in cars', 'watched this movie a while back and was so enamored by the scenes in the car as someone that also purchased a 30 year old car, I find these scenes extremely cozy—any other movies that spend a significant amount of time in a car (preferably vintage) or have a standout car/driving scene that isn’t Fast and Furious?

another standout car scene that has left an impression on me is Gone Girl, when she’s driving and giving her infamous monologue', 'j___8', 1792113385, '/r/MoviesThatFeelLike/comments/1x734pn/movies_that_spend_a_lot_of_time_in_cars/', 'https://www.reddit.com/gallery/1x734pn', 'MoviesThatFeelLike', 'Cozy, introspective road trips inside vintage vehicles and intimate automotive confines.', 'publishable', NULL, NULL, '2026-10-17 12:17:44', '2026-10-17 12:17:44')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
