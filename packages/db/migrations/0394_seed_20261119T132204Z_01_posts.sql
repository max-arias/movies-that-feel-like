-- 0394_seed_20261119T132204Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T13:22:38.799468+00:00
-- Run started: 2026-11-19T13:22:04.078867+00:00
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
VALUES ('1xz719i', 'Movies like Kena?', 'Movies like Kena?', 'So naturally I''m looking for an animated movie, and Kena itself feels like a Pixar or Dreamworks movie.

Closest thing that I''ve watched previously is Brave (2012), but perhaps there''s something else like this that''s newer, any ideas?', 'Sudden-Guidance-2945', 1794979369, '/r/MoviesThatFeelLike/comments/1xz719i/movies_like_kena/', 'https://www.reddit.com/gallery/1xz719i', 'MoviesThatFeelLike', 'Whimsical, magical-forest animation seeking Pixar/DreamWorks warmth.', 'publishable', NULL, NULL, '2026-11-19 13:22:38', '2026-11-19 13:22:38')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xz949s', 'Stylish Serious Espionage Action Films', 'Stylish Serious Espionage Action Films', 'I am looking for 

\*Globetrotting/ Multiple Landscapes.

\*Exotic and Posh atmosphere

\*Has larger than life stakes

\*Very professional world in which the characters operate

\*Shootouts and Action emphasis.', 'cohenesque', 1794986777, '/r/MoviesThatFeelLike/comments/1xz949s/stylish_serious_espionage_action_films/', 'https://www.reddit.com/gallery/1xz949s', 'MoviesThatFeelLike', 'Slick, globetrotting espionage with posh menace and high-stakes action.', 'publishable', NULL, NULL, '2026-11-19 13:22:38', '2026-11-19 13:22:38')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xza3hb', 'Movies or Series that gives the feeling as these movies', 'Movies or Series that gives the feeling as these movies', 'That gives the feeling of loneliness, not being able to say what you want to say, emptiness.

Same vibes as these movies, Emotional, melancholy, friendly, lost.

And same genre. ', 'Alternative-Bite-378', 1794990639, '/r/MoviesThatFeelLike/comments/1xza3hb/movies_or_series_that_gives_the_feeling_as_these/', 'https://www.reddit.com/gallery/1xza3hb', 'MoviesThatFeelLike', 'Lonely, melancholy, emotionally inarticulate tenderness.', 'publishable', NULL, NULL, '2026-11-19 13:22:38', '2026-11-19 13:22:38')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzancr', 'Gang ,fellow movie lovers , together we will make an ultimate list of #90s movie', 'Gang ,fellow movie lovers , together we will make an ultimate list of #90s movie', 'list them , with genre....', 'Club-Signal', 1794992848, '/r/MoviesThatFeelLike/comments/1xzancr/gang_fellow_movie_lovers_together_we_will_make_an/', 'https://v.redd.it/44bsqy0b7c2i1', 'MoviesThatFeelLike', 'Frustrated cinephiles rejecting AI-generated nostalgia and demanding real 90s movie talk.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 13:22:38', '2026-11-19 13:22:38')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzd9p2', 'I got tired of having nobody to talk to about the movies I watch, so I’m trying to fix it', 'I got tired of having nobody to talk to about the movies I watch, so I’m trying to fix it', '', 'PhaseSpecialist7364', 1795002534, '/r/MoviesThatFeelLike/comments/1xzd9p2/i_got_tired_of_having_nobody_to_talk_to_about_the/', 'https://www.reddit.com/r/filmtheory/comments/1xzd9ib/i_got_tired_of_having_nobody_to_talk_to_about_the/', 'MoviesThatFeelLike', 'Lonely cinephile seeking connection over shared movie talk.', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-11-19 13:22:38', '2026-11-19 13:22:38')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
