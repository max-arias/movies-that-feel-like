-- 0389_seed_20261119T034646Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-19T03:47:19.225833+00:00
-- Run started: 2026-11-19T03:46:46.447938+00:00
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
VALUES ('1xzebft', 'Guys rom-com suggestion for you and recommend me something else', 'Guys rom-com suggestion for you and recommend me something else', '', 'BeginningAd2025', 1795005875, '/r/MoviesThatFeelLike/comments/1xzebft/guys_romcom_suggestion_for_you_and_recommend_me/', 'https://www.reddit.com/r/romancemovies/comments/1xzeb8o/guys_romcom_suggestion_for_you_and_recommend_me/', 'MoviesThatFeelLike', 'Unanswered rom-com request.', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzhe4m', 'Movies that match this vibe of old medicine', 'Movies that match this vibe of old medicine', '', 'Lazy-monoly', 1795014165, '/r/MoviesThatFeelLike/comments/1xzhe4m/movies_that_match_this_vibe_of_old_medicine/', 'https://www.reddit.com/gallery/1xzhe4m', 'MoviesThatFeelLike', 'Old-medicine gothic medical macabre atmosphere.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzkn3y', 'Can you recommend any movies that have the same creepy vibe?', 'Can you recommend any movies that have the same creepy vibe?', '[removed]', 'moon_luna999', 1795021770, '/r/MoviesThatFeelLike/comments/1xzkn3y/can_you_recommend_any_movies_that_have_the_same/', 'https://www.reddit.com/gallery/1xzkn3y', 'MoviesThatFeelLike', 'Creepy-vibe request with removed context and no replies.', 'skipped', 'no usable images; no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzl0hn', 'movies that feel like this', 'movies that feel like this', 'i read alot about young earth lately and i dont know why i am so interested with these kind of aesthetics! ', 'dispunktional', 1795022568, '/r/MoviesThatFeelLike/comments/1xzl0hn/movies_that_feel_like_this/', 'https://www.reddit.com/gallery/1xzl0hn', 'MoviesThatFeelLike', 'Prehistoric, primordial ancient-earth wonder.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzmxtn', 'Horror movies without jump scares or gore that rely entirely on eerie atmosphere and unsettling vibes and rely on weird unconfortable scenes but not direct horror?', 'Horror movies without jump scares or gore that rely entirely on eerie atmosphere and unsettling vibes and rely on weird unconfortable scenes but not direct horror?', '', 'bdue817', 1795026871, '/r/MoviesThatFeelLike/comments/1xzmxtn/horror_movies_without_jump_scares_or_gore_that/', 'https://www.reddit.com/gallery/1xzmxtn', 'MoviesThatFeelLike', 'Eerie, uncomfortable slow-burn horror atmosphere.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xznjfm', 'Looks like Ariana posed for one picture and called it a day lmao', 'Looks like Ariana posed for one picture and called it a day lmao', '', 'No-Friendship-9412', 1795028254, '/r/MoviesThatFeelLike/comments/1xznjfm/looks_like_ariana_posed_for_one_picture_and/', 'https://i.redd.it/wjvm55wj4f2i1.jpeg', 'MoviesThatFeelLike', 'Petty, amused celebrity-marketing snark.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzou5a', 'Recommendations for My Movie List', 'Recommendations for My Movie List', 'Hello fellow movie lovers! What should I add to my movie list? I LOVE sci-fi, horror, thriller… my faves are probably zombies, aliens, ghosts, possessions, CREATURE FEATURES, vampires, etc. Any year, any language (I’m okay with subtitles if the movie is really good)! This is my current list. I started it in college and I’ve slowly added to it over the years. I’m not perfect, sometimes I forget to add something I’ve watched, but this is the majority. My master copy has notes here and there & personal star reviews (out of 5 stars). The movies on this list are a mix of really really good and really really bad haha! LMK what you think!

SCI-FI 🔭    
—dystopian —————————————————    
\\-hunger games(s)     
\\-self/less     
\\-Divergent    
\\-the giver     
—aliens + space 👽—————————————    
\\-starship troopers     
\\-the astronaut     
\\-the tomorrow war     
\\-project Hail Mary     
\\-no one will save you     
\\-The Cloverfield Paradox    
\\-Star Wars    
\\-Star Trek     
\\-life     
\\-the fifth element     
\\-nope     
\\-the thing     
\\-battleship     
\\-a quiet place series     
\\-predator(s)     
\\-prey     
\\-evolution     
\\-Battle Los Angeles    
\\-avatar way of water     
\\-edge of tomorrow     
\\-pacific rim     
\\-avatar     
\\-interstellar    
\\-arrival    
\\-guardians of the galaxy     
\\-under the skin    
\\-cowboys vs aliens     
\\-alien(s)     
\\-extinction     
\\-thirst 2015     
\\-alien(s)     
\\-the invasion     
\\-harbinger down    
\\-super 8     
\\-dark skies     
\\-the 5th wave     
\\-evolution     
\\-the fourth kind     
\\-battleship     
\\-paul     
\\-the tomorrow war     
\\-the day the earth stood still 2008     
\\-extinction     
\\-thirst 2015    
\\-the lair    
\\-life     
\\-nope     
\\-the thing 2011     
\\-the thing 1982     
\\-battleship     
\\-no one will save you     
\\-a quiet place series     
\\-predator(s)     
\\-prey     
\\-Battle Los Angeles    
\\-starship troopers     
\\-guardians of the galaxy     
\\-avatar    
\\-avatar way of water     
\\-edge of tomorrow     
\\-pacific rim     
\\-cowboys vs aliens     
—dinosaurs 🦖———————————————    
\\-Jurassic Park(s)     
\\-The Jurassic Games     
\\-65     
\\-the end of oak street    
\\-primitive war    
—robots + AI 🤖———————————————    
\\-TAU     
\\-robocop    
\\-I, robot    
\\-wall-e     
—experiment gone wrong 🧪————————    
\\-splice     
\\-the fly    
\\-the lair     
—science/experiment gone right———————    
\\-weird science 

FANTASY 🗡️    
\\-sucker punch     
\\-three thousand years of longing     
\\-dungeons and dragons: honor among thieves     
—Dragons 🐉————————————————    
\\-Damsel (Millie Bobby Brown being a badass, corrupt kingdom, awesome revenge)    
—Gods & Goddesses ————————————    
\\-Exodus: Gods and Kings     
—Superhuman ——-—————————————    
\\-Hancock    
—Kings & Queens 👑————————————-    
\\-Snow White and the Huntsman     
\\-The Huntsman: Winter’s War     
\\-Damsel     
—Fairies 🧚—————————————————-    
\\-Strange Magic     
\\-the watchers (fae)     
\\-Barbie Fairytopia     
\\-Barbie Mermadia     
—Witches, Wizards/Warlocks 🧙‍♂️——————    
\\-practical magic    
\\-Harry Potter(s)     
\\-The Hobbit     
\\-Chronicles of Narnia     
\\-Snow White and the Huntsman     
\\-The Huntsman: Winter’s War    
\\-the covenant    
\\-Disney trick or treat 1952     
—Biblical ——————————————————

THRILLER/SCARY 😱    
\\-the silence    
\\-alone    
\\-The visit     
\\-The Hunt     
\\-Twilight zone: the movie     
\\-Fresh     
\\-till death    
\\-Barbarian     
\\-Strange Harvest     
\\-the addams family     
\\-mr. harrigan’s phone     
\\-addams family values     
\\-in time     
\\-Creepshow     
\\-Creepshow 2     
\\-gone girl     
\\-Unhinged     
\\-no exit    
\\-Beetlejuice     
\\-self/less    
\\-Lucy    
\\-Pet Sematary     
\\-Pet Sematary Bloodlines     
\\-the giver     
\\-the prodigy     
\\-invisible man     
——feral humans 🏹—————————————    
\\-wrong turn 2021 (community that “escaped” the civil war by moving into the woods - unexpected/some good twists)    
\\-the green inferno     
——slasher 🔪————————————————    
\\-prom night     
\\-boogeyman 2     
\\-Texas chainsaw massacre 2022     
\\-hush     
\\-leatherface     
\\-the Texas chainsaw massacre 2003     
\\-the Texas chainsaw massacre 1974     
\\-Halloween    
\\-Friday the 13th     
\\-My bloody valentine (old)    
\\-Cape fear    
\\-Seven    
\\-child’s play     
\\-child’s play 2     
\\-child’s play 3     
\\-bride of chucky     
\\-seed of chucky     
——monster/creature feature 👹——————    
\\-I am dragon    
\\-I am legend     
\\-the last house    
\\-animal 2014 (corny monster goodness - hike gone wrong, relationship drama, cabin in the woods. Practical effects for the monster. Keke Palmer is in this one)     
\\-the windigo (Native American family summons a windigo)    
\\-do not enter (immortal demonic creature that preys on peeps in a haunted hotel)     
\\-willow creek (meh - found footage, never actually see the monster)    
\\-blue my mind (mermaid)    
\\-pitch black (Vin Diesel. Spaceship crashes on a planet with flying creatures that want to eat you)    
\\-dawn of the beast (Bigfoot and wendigos - hilarious/campy goodness)     
\\-the lure (mermaid - in Polish)     
\\-the watchers (Fae. Unexpected twist at the end)     
\\-the cave     
\\-antlers (wendigo)     
\\-the village (great twist)     
\\-feast 2006     
\\-the wall     
\\-feast 2 sloppy seconds     
\\-feast 3 the happy finish    
\\-the mist     
\\-it lives inside     
\\-the cabin in the woods     
\\-frankenhooker     
\\-beetlejuice     
\\-don’t be afraid of the dark     
\\-a quiet place     
\\-bird box     
\\-bird box Barcelona    
\\-the tank     
\\-the descent     
\\-the descent 2     
\\-love and monsters     
\\-young Frankenstein     
\\-creature from the black lagoon    
\\-sweetheart     
\\-the silence     
\\-before I wake     
\\-the mummy 2026     
\\-the mummy (tom cruise)     
\\-the mummy 1999     
\\-the mummy returns     
\\-the mummy 1959     
\\-hotel Transylvania     
\\-hotel Transylvania 2     
\\-hotel Transylvania 3     
——werewolf movies 🐺———————————    
\\-ginger snaps     
\\-the beast within    
\\-howl     
\\-the wolfman 2010    
\\-cursed 2005     
——witch//wizard//warlock movies 🔮————    
\\-the cursed     
\\-the witch     
\\-the autopsy of Jane Doe    
\\-hereditary     
——zombie movies 🧟‍♀️————————————    
\\-world war z     
\\-day of the dead     
\\-we bury the dead     
\\-train to busan presents: peninsula     
\\-zombie town     
\\-day of the dead 1985     
\\-scouts guide to the zombie apocalypse     
\\-night of the creeps     
\\-the sadness (fucked up - don’t rewatch)    
\\-unhuman    
\\-valley of the dead     
\\-zombieland     
\\-zombieland: double tap     
\\-day of the dead: bloodline     
\\-28 days later     
\\-dawn of the dead     
\\-army of the dead     
\\-shaun of the dead    
\\-alone (2020)     
\\-train to busan     
\\-warm bodies     
\\-corpse bride     
\\-28 weeks later     
\\-viral    
\\-the girl with all the gifts     
\\-I am legend     
——vampire movies 🩸———————————    
\\-interview with a vampire     
\\-Abigail     
\\-the invitation     
\\-house of darkness     
\\-Renfield     
\\-mom’s got a date with a vampire     
\\-dracula (3 part Netflix series)     
\\-morbius     
\\-the last voyage of the Demeter     
\\-dark shadows     
\\-fright night     
\\-nosferatu the vampire 1979    
\\-slayers     
\\-queen of the damned     
\\-day shift     
\\-I am legend     
\\-Dracula 2000 Wes Craven    
\\-twilight     
\\-hotel Transylvania     
\\-hotel Transylvania 2     
\\-hotel Transylvania 3     
\\-dracula untold     
\\-the lost boys    
\\-30 days of night     
\\-from dusk till dawn     
\\-from dusk till dawn 2     
——alien movies 👽—————————————    
\\-alien(s)     
\\-the invasion     
\\-harbinger down    
\\-super 8    
\\-dark skies     
\\-the 5th wave     
\\-evolution     
\\-the fourth kind     
\\-battleship     
\\-paul     
\\-the tomorrow war     
\\-the day the earth stood still 2008     
\\-extinction     
\\-thirst 2015     
\\-the lair     
\\-life     
\\-nope    
\\-the thing 2011     
\\-the thing 1982     
\\-battleship     
\\-no one will save you     
\\-a quiet place series     
\\-predator(s)     
—predators     
\\-prey     
\\-Battle Los Angeles    
\\-starship troopers     
\\-guardians of the galaxy     
\\-avatar    
\\-avatar way of water     
\\-edge of tomorrow     
\\-pacific rim     
\\-cowboys vs aliens     
——demons/biblical horror/etc 👿——————    
\\-legion    
\\-do not enter (immortal demonic creature that preys on peeps in a haunted hotel)    
\\-the mummy 2026     
\\-devil     
\\-nefarious     
\\-night of the demons     
\\-the conjuring     
\\-the conjuring the devil made me do it     
\\-the conjuring the last rites     
\\-the last exorcism 2010     
\\-Annabelle origin     
\\-Annabelle     
\\-Annabelle returns home     
\\-Jennifer’s body     
\\-The Evil Dead 1981     
\\-Eli     
\\-smile     
\\-it lives inside     
\\-Evil Dead 2     
\\-army of darkness (pt. 3 to The Evil Dead)    
\\-the exorcist     
\\-deliver us from evil     
\\-Evil Dead 2013     
——ghosts/spirits 👻—————————————    
\\-the conjuring     
\\-bedrest     
\\-secrets in the walls     
\\-last shift     
\\-Annabelle origin     
\\-malum     
\\-the haunting in Connecticut     
\\-talk to me     
\\-scary stories to tell in the dark     
\\-crimson peak     
\\-beetlejuice     
\\-the amityville horror 2005     
\\-the amityville horror 1979     
\\-Disney lonesome ghosts 1937     
——Unhinged Animals 🐊——————————    
\\-primate (rabid chimpanzee - scary good time)     
\\-lake placid     
\\-lake placid 2    
\\-lake placid 3    
\\-lake placid the final chapter    
\\-lake placid vs anaconda    
\\-lake placid legacy     
\\-anaconda 1997 (JLo. Film crew in the Amazon. Loved it)     
\\-anaconda 2025 (Jack Black and Paul Rudd?? lol?)    
\\-jaws     
\\-bats     
\\-eight legged freaks     
\\-piranha 1995     
\\-sharktopus    
\\-sharknado     
\\-sharknado 2: the second one     
\\-sharknado 3: oh hell no!     
\\-sharknado 4: the force awakens 

COMEDY 😂    
\\-Code 3     
\\-the hot chick    
\\-white chicks

ROMCOM ❤️     
\\-the hating game    
\\-the proposal    
\\-white chicks     
\\-miss congeniality     
\\-the love hypothesis    
—Christmas🎄———————————————    
\\-lovehard     
\\-holidate 

WESTERN INSPIRED🤠    
\\-last of the Mohicans     
\\-cowboys vs aliens     
\\-dances with wolves     
\\-quigley down under     
\\-true grit    
\\-the revenant 

MOVIES THAT HURT MY FEELINGS 💔    
\\-the boy with the stripped pajamas     
\\-last of the Mohicans     
\\-the bucket list     
\\-me before you     
\\-Edward Scissorhands     
\\-The green mile ', 'ProcrastinatingPear', 1795031233, '/r/MoviesThatFeelLike/comments/1xzou5a/recommendations_for_my_movie_list/', 'https://www.reddit.com/gallery/1xzou5a', 'MoviesThatFeelLike', 'Hungry for sci-fi horror, creature features, and any-era scares with an open, list-keeping enthusiasm.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzp29f', 'Robert Pattinson is on a generational employment run.', 'Robert Pattinson is on a generational employment run.', '', 'No-Friendship-9412', 1795031774, '/r/MoviesThatFeelLike/comments/1xzp29f/robert_pattinson_is_on_a_generational_employment/', 'https://i.redd.it/xdol9cf1ff2i1.jpeg', 'MoviesThatFeelLike', 'Wry, film-nerd hype over Robert Pattinson’s relentless run of projects.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzpr88', 'like I’m in the Black Lodge', 'like I’m in the Black Lodge', '', 'r0ttenpeaches', 1795033343, '/r/MoviesThatFeelLike/comments/1xzpr88/like_im_in_the_black_lodge/', 'https://www.reddit.com/gallery/1sgo2lm', 'MoviesThatFeelLike', 'Red-curtained, dreamlike unease, as if trapped in the Black Lodge.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzqofy', 'Movies Like Incendies need recommendations', 'Movies Like Incendies need recommendations', 'I want some movies recommendation one that is like Incendies.The story telling timeline in Incendies is what i am quite fond of the cast the plot the cinematography and the very fitting "You and Whose Army?" Radio Head soundtrack. Old boy has a similar plot twist i personally like Incendies way more.

I did try to look up similar movies but they didn''t really piqued my interest so help a brother out.', 'Delicious_Double8485', 1795035581, '/r/MoviesThatFeelLike/comments/1xzqofy/movies_like_incendies_need_recommendations/', 'https://i.redd.it/lm67zwaaqf2i1.jpeg', 'MoviesThatFeelLike', 'Eager for slow-burn, twisty, emotionally devastating cinema in the vein of Incendies.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzqoka', 'I''m looking for an enchanting kinda dark floral aesthetic movie', 'I''m looking for an enchanting kinda dark floral aesthetic movie', 'I love this aesthetic, I would die for it... I''m quite exaggerating, but truly I''ve been looking for all sorts of material that look like this... Wether it''s music (for now I''ve found Agnes Obel- Curse), books (Alice in Wonderland or The Fall of the house of Husher) now I''m looking for movies...  

I want to immerse in these kind of romantic, enchanting stories that can appear to be for children but that has a deeper meaning like fables or something like that. In all kind of medias !

My best example would be the Korean drama "It''s okay to not be okay" : for the animated scenes, the children stories and the vibe around the house... It''s the only thing that comes as close, but also I can feel it in ads in Christmas... I know it''s oddly specific...

please give me anything, even if it''s not a movie like a Tv show or music !', 'Business_Gas8376', 1795035591, '/r/MoviesThatFeelLike/comments/1xzqoka/im_looking_for_an_enchanting_kinda_dark_floral/', 'https://www.reddit.com/r/MoviesThatFeelLike/comments/1xzqoka/im_looking_for_an_enchanting_kinda_dark_floral/', 'MoviesThatFeelLike', 'Darkly romantic, floral, and fairy-tale enchanting.', 'skipped', 'no usable images', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzqxwh', 'The butterfly effect 🦋', 'The butterfly effect', 'Looking for movies with alternate realities/ butterfly effect/ time travel with a group altering their reality and seeing different outcomes ', 'Longjumping_Rain1052', 1795036201, '/r/MoviesThatFeelLike/comments/1xzqxwh/the_butterfly_effect/', 'https://www.reddit.com/gallery/1xzqxwh', 'MoviesThatFeelLike', 'Curious, reality-bending, and eager for alternate-timeline stories.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzr9iz', 'What''s your favorite movie that''s secretly a retelling of a classic myth or story?', 'What''s your favorite movie that''s secretly a retelling of a classic myth or story?', '', 'MocasinesDeColores', 1795036972, '/r/MoviesThatFeelLike/comments/1xzr9iz/whats_your_favorite_movie_thats_secretly_a/', 'https://www.reddit.com/gallery/1xzr9iz', 'MoviesThatFeelLike', 'Playful, argumentative myth-hunting with a cinephile buzz.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xzsjn1', 'Movies that feel like how this sounds', 'Movies that feel like how this sounds', '', 'asapsharkyfrfr', 1795040160, '/r/MoviesThatFeelLike/comments/1xzsjn1/movies_that_feel_like_how_this_sounds/', 'https://v.redd.it/gppoycsz3g2i1', 'MoviesThatFeelLike', 'Mysterious, sensory, and open-ended.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at")
VALUES ('1xztvrt', 'Movies that feel like retro futuristic sci fi?', 'Movies that feel like retro futuristic sci-fi', '', 'According-Self9700', 1795043663, '/r/MoviesThatFeelLike/comments/1xztvrt/movies_that_feel_like_retro_futuristic_sci_fi/', 'https://www.reddit.com/gallery/1xztvrt', 'MoviesThatFeelLike', 'Nostalgic, chrome-and-neon retro-futurist wonder.', 'publishable', NULL, NULL, '2026-11-19 03:47:19', '2026-11-19 03:47:19')
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at";
