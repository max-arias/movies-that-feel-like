-- 0284_seed_20261020T050116Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-10-20T05:01:58.675582+00:00
-- Run started: 2026-10-20T05:01:16.071146+00:00
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
VALUES ('1xaaih7', 'Movies or TV shows that feel like To Binge by Gorillaz?', 'Movies or TV shows that feel like To Binge by Gorillaz?', '', 'AccurateShake322', 1792447311, '/r/MoviesThatFeelLike/comments/1xaaih7/movies_or_tv_shows_that_feel_like_to_binge_by/', 'https://i.redd.it/c2hbhu54yhwh1.jpeg', 'MoviesThatFeelLike', 'Melancholic and breezy tropical nostalgia with a bittersweet romantic haze.', 'skipped', 'no enriched recommendation matches', NULL, '2026-10-20 05:01:58', '2026-10-20 05:01:58')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xabca0', 'I wanna know what movies that left you like the meme phrase “At first I didn’t get it, now I still don’t”', 'I wanna know what movies that left you like the meme phrase “At first I didn’t get it, now I still don’t”', 'Not necessarily complex movies', 'Unlucky-Leading5585', 1792449380, '/r/MoviesThatFeelLike/comments/1xabca0/i_wanna_know_what_movies_that_left_you_like_the/', 'https://i.redd.it/e0x54ua44iwh1.jpeg', 'MoviesThatFeelLike', 'Persistent bewilderment and baffling narrative confusion that defies full comprehension.', 'publishable', NULL, NULL, '2026-10-20 05:01:58', '2026-10-20 05:01:58')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xabf66', 'Space magic with these colors', 'Space magic with these colors', 'I''ve been thinking about these colors in particular. Any movies that remind you of this? ', 'Reasonable_Eye_6286', 1792449597, '/r/MoviesThatFeelLike/comments/1xabf66/space_magic_with_these_colors/', 'https://i.redd.it/erweb8nu4iwh1.jpeg', 'MoviesThatFeelLike', 'Vibrant and surreal cosmic visuals blending psychedelic space aesthetics with mystical energies.', 'publishable', NULL, NULL, '2026-10-20 05:01:58', '2026-10-20 05:01:58')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xabqxs', 'Movies about Monster Hunting (preferably in a medieval setting and with a horror vibe)', 'Movies about Monster Hunting (preferably in a medieval setting and with a horror vibe)', 'I can only find movies that fit the "Monster hunter" label, but lacking in horror. What I want, if possible, is a movie where the protagonist is already aware that monsters are real at the beginning and purposely seeks them out (either because it is their job or some other reason), but they aren''t really a "badass" so there is a lot of tension.

You know how a lot of horror movies have "The Specialist" - the character who arrives mid-film to diagnose, explain, and combat the supernatural threat. I want films were such a character is the main protagonist, rather than a side character.', 'Efficient-Pudding177', 1792450454, '/r/MoviesThatFeelLike/comments/1xabqxs/movies_about_monster_hunting_preferably_in_a/', 'https://www.reddit.com/gallery/1xabqxs', 'MoviesThatFeelLike', 'Tense and dread-filled medieval horror tracking vulnerable specialists hunting the supernatural.', 'publishable', NULL, NULL, '2026-10-20 05:01:58', '2026-10-20 05:01:58')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xac6b7', 'Movies where nothing matters and the only constant is chaos', 'Movies where nothing matters and the only constant is chaos', 'District 9

Event Horizon

Mad Max: Fury Road

Mad God

Dredd

Hard to be God

Pandorum', 'IcyMarsupial6619', 1792451576, '/r/MoviesThatFeelLike/comments/1xac6b7/movies_where_nothing_matters_and_the_only/', 'https://www.reddit.com/gallery/1xac6b7', 'MoviesThatFeelLike', 'Nihilistic and unrelenting chaos where survival is brutal and disorder reigns supreme.', 'publishable', NULL, NULL, '2026-10-20 05:01:58', '2026-10-20 05:01:58')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
