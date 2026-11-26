-- 0049_seed_20261126T022105Z_01_posts.sql: data seed from pipeline:load run.
-- Generated:  2026-11-26T02:21:07.579195+00:00
-- Run started: 2026-11-26T02:21:05.990088+00:00
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

INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y52ayx', 'Looking for a game I can truly get lost in.', 'Looking for a game I can truly get lost in.', 'I''m really itching for a game that scratches that same itch as Death Stranding, RDR2, KCD2, Skyrim, Fallout 4, Witcher 3 or No Man''s Sky. I want a world I can get completely lost in, with great exploration, satisfying combat, and plenty of room for roleplaying. A building system would be a huge plus, but it''s not a dealbreaker. I just want to explore, get into combat, build something, live out my own little adventure, and occasionally stop to take in the scenery. You know, the kind of game where you lose track of time because you''re just enjoying being in that world. Any suggestions guys? help out a fellow gamer. thank you!', 'No_Smell_1937', 1795595662, '/r/GamesThatFeelLike/comments/1y52ayx/looking_for_a_game_i_can_truly_get_lost_in/', 'https://www.reddit.com/r/GamesThatFeelLike/comments/1y52ayx/looking_for_a_game_i_can_truly_get_lost_in/', 'GamesThatFeelLike', 'A vast, lived-in world to wander, fight, build, and lose track of time in.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y52ltw', 'Game where I''m in a cozy spaceship just drifting through space', 'Game where I''m in a cozy spaceship just drifting through space', 'Would love to feel like I''m nestled and warmed up inside a cozy spaceship just relaxing with nothing to do and no care in the world. Just trying to capture that atmosphere and environment.', 'Guy-Lambo', 1795596908, '/r/GamesThatFeelLike/comments/1y52ltw/game_where_im_in_a_cozy_spaceship_just_drifting/', 'https://preview.redd.it/cozy-space-station-apartments-v0-syqqr2viyuzc1.jpg?width=1080&crop=smart&auto=webp&s=de82d54c58a344934906b93393f1afc1db31c351', 'GamesThatFeelLike', 'Warm, cozy spaceship drifting through quiet space with nowhere to be.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y534st', 'Something with Frutiger Aero vibes with futuristic technology mixed with nature like Halo and Subnautica', 'Something with Frutiger Aero vibes with futuristic technology mixed with nature like Halo and Subnautica', '', 'Gothyanki', 1795598928, '/r/GamesThatFeelLike/comments/1y534st/something_with_frutiger_aero_vibes_with/', 'https://www.reddit.com/gallery/1y534st', 'GamesThatFeelLike', 'Sleek futuristic technology softened by lush nature and optimistic Frutiger Aero gloss.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y53to0', 'winter, survival, hunt to eat, cooking life sim.', 'winter, survival, hunt to eat, cooking life sim.', 'hey yall !! I’m on the hunt for a potentially niche type game with a focus on cooking mechanics like mini games along with hunting and survival with bonus points for a winter landscape. thing the winter sections of red dead redemption two but with an emphasis on the cooking and hunting mechanic. Ik this might be too specific but I’m really curious what people recommend! I’m also open to mods for various games like fallout four or Skyrim. Thank you !! ', 'xXCaliciferXx', 1795601569, '/r/GamesThatFeelLike/comments/1y53to0/winter_survival_hunt_to_eat_cooking_life_sim/', 'https://www.reddit.com/gallery/1y53to0', 'GamesThatFeelLike', 'Frozen wilderness survival with a campfire, hunting, and cooking.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', 'Red Dead Redemption 2', 25076)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y54pnw', 'Looking for a mechanically rich game with very good ai, basebuilding and looting', 'Looking for a mechanically rich game with very good AI, basebuilding and looting', 'I think I finally have the vocabulary to describe what I''m looking for here. 

Basically, I''m familiar with the typical extraction shooter/zombie survival base building deal. You get your gun parts, you build the base, you get some rando npcs for passive resource generation and crafting purposes. 

Very lame if you ask me. Very narrow gameplay loop. Get guns to kill stuff for more guns. No thanks. Roguelikes do that better anyways.

I''m looking for a world where you''re in a really rough sci-fi/zombie/post apocalypse setting and you are putting together a base that actually means something. It has independantly simulated factions, merchants, people to hire for services and wealth building. 

  
Furthermore, I love a certain kind of loot system. It''s the furthest thing from your run-of-the-mill rpg where there''s same-thing-you-have but blue colored now with better stats.

I love the type of loot system where each item you find represent whole new possibilities, mechanics, and combat effects. 

  
A great example of this is Rimworld. Every item you find, whether it''s drugs or power armor or materials, is a moving piece in a gameplay environment that will unlock many things. 

Get a new tech? You''ll be building a new room and many devices for it. You need materials. Get those materials? Now you need genetic material, or priosoners, or more tech. 

  
Get a funny new pill? You can pop it but now it''s a full-time addiction you have to maintain if you wanna keep the pawn that took it.

  
I could go on. At the heart of it, the things you find are your personal wealth and simulated mini empire growing. A suit of power armor means a new level of risk taking is now permissible in combat - but it''s also free temp regulation which is quite the prize in early game. It''s also sexy sci fi tech.​

Other games that embody this well are Arma 3 Antistaski mod, Endless Sky (find unique alien tech by zooming around the galaxy and mix and match before returning to human space all pimped out), Survival Invisible Strain and Ostranauts. 

Just the feeling of finding something and knowing your whole operation just got elevated is so cool, especially when you know you''re too primative to ever create this kind of tech (yet).

Ostranauts is maybe the best example of what i want overall. You start off in a ruthless corporate world and immediately have to put your balls to the wall in an unsafe simulated work environment to make it. 

  
But if you do, you can make your own little space business, space Rednecking your way into a bigger ship or even patching up a wreck you don''t have a license for on the down low. 

There''s that feeling of beating the odds and getting your grubby hands on a big find that is your next 10k in credits. 

You cheese everyone and everything for all you''re worth just to make it.

I want a game like that and I''m not too picky what form that takes so long as it has the essential elements. 

  
Maybe no one has a suggestion that specific, and that''s also fine. Thanks for reading. ​

  




', 'Sufficient-Ad-7349', 1795604883, '/r/GamesThatFeelLike/comments/1y54pnw/looking_for_a_mechanically_rich_game_with_very/', 'https://www.reddit.com/r/GamesThatFeelLike/comments/1y54pnw/looking_for_a_mechanically_rich_game_with_very/', 'GamesThatFeelLike', 'Rough sci-fi survival where a meaningful base, simulated factions, and transformative loot open real possibilities.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y592ju', 'Am looking for a gta alternative', 'Am looking for a GTA alternative', 'I am looking for a open world realistic game with guns and where you can do anything you want like grand theft auto button must be 3-D under 100 GB and it must be free and I already tried NTE', 'StandardTree7066', 1795617854, '/r/GamesThatFeelLike/comments/1y592ju/am_looking_for_a_gta_alternative/', 'https://www.reddit.com/r/gamingsuggestions/comments/1y5924t/am_looking_for_a_gta_alternative/', 'GamesThatFeelLike', 'Open-world criminal mayhem on a tight budget.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', 'Grand Theft Auto', 980)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5apl3', 'Games that feel like this', 'Games that feel like this', '', 'B0nelessJello', 1795621798, '/r/GamesThatFeelLike/comments/1y5apl3/games_that_feel_like_this/', 'https://www.reddit.com/gallery/1y5apl3', 'GamesThatFeelLike', 'Cartoon secret-society mischief: childhood icons gathered like an illuminati cabal.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5epm3', 'Games that feel like the bobiverse books series, or you are a von Neumann probe.', 'Games that feel like the Bobiverse book series, or you are a von Neumann probe', 'Know this may be a long shot, but I just finished the Bobiverse books (amazing read if you haven''t read them yet) and got thinking about if there are any games that encompass the whole von Neumann probe idea.

I have Stellaris, MoO, Distant Worlds and quite a few other space based games but none give the same feeling.

Honestly, anything along the same lines would be nice.', 'YUSHOETMI-', 1795630944, '/r/GamesThatFeelLike/comments/1y5epm3/games_that_feel_like_the_bobiverse_books_series/', 'https://i.redd.it/2dw37sm4ws3i1.jpeg', 'GamesThatFeelLike', 'Lonely, exponential spacefaring wonder: a single probe becoming an interstellar civilization.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5fp4d', 'Games that feel liek you are a character inside a Baki universe (but not a Fighting genre)', 'Games that feel like you are a character inside a Baki universe (but not a Fighting genre)', 'I just started watching Baki Hanma, it''s an anime about martial arts and fighting. And it REALLY made me crave to play something like that. I know about Sifu and Absolver. They are very close to what I want but not quite. I want something where punches feel heavy and hefty, where every punch matters. Yakuza 0 Kiryu''s Beast style is close to what I''m imagining, but it doesn''t necessarily have to be such a crude fighting style. Just strong athletic individuals fighting, preferably using martial arts, not flailing arms like madmen. And the game can have any degree of compelxity. It can have complex mechanics like Abslover, or it can be very simple (if it only have like a punch and block and maybe dodge or parry buttons it will be fine). I just want something... *punchy*. You know?  
Also, , I want to avoid Fighting genre of games, with the whole "from the side" view and healthbars above characters, on top of the screen.  
I will appreciate any suggestions. Thank you in advance.', 'WiseBlizzard', 1795633265, '/r/GamesThatFeelLike/comments/1y5fp4d/games_that_feel_liek_you_are_a_character_inside_a/', 'https://www.reddit.com/gallery/1y5fp4d', 'GamesThatFeelLike', 'Heavy, bone-crunching martial-arts brawls where every punch lands with brutal weight.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5frul', 'Games with an invasion system like DEATLOOP/SOULSBORNE', 'Games with an Invasion System Like Deathloop/Soulsborne', 'Basically the title. A game where you can invade another player and (at the very least) be an inconvienience for the player doing progress.', 'RutiRuti06', 1795633431, '/r/GamesThatFeelLike/comments/1y5frul/games_with_an_invasion_system_like/', 'https://www.reddit.com/r/GamesThatFeelLike/comments/1y5frul/games_with_an_invasion_system_like/', 'GamesThatFeelLike', 'Invading another player''s run to be a disruptive menace in a time-loop or soulslike world.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', 'Deathloop', 113598)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5gmzd', 'Games that feel like you are part of a small militia in a much bigger conflict against a much better organized and trained force or forces.', 'Games That Feel Like You Are Part of a Small Militia in a Much Bigger Conflict Against a Much Better Organized and Trained Force or Forces', 'In many games where you are fighting a stronger foe, you are often times put in the shoes of a savior figure like the Rook in Far Cry 5 or special forces of some kind like in Ghost Recon. I want to play a game where you are functionally just part of a rabble militia rather than some kind of superhuman or black ops operator. The vibe I''m looking for is the "you are a tiny part of a much bigger war" kinda deal. Any help finding more games like this would be very appreciated. :)

Irregular Militia - Squad

Whitetail Militia - Far Cry 5

Kataris 26 - Ghost Recon

Army of Chaos - Just Cause 4

Civillian Militia - The Division 2', 'MysteriousWealth9209', 1795635518, '/r/GamesThatFeelLike/comments/1y5gmzd/games_that_feel_like_you_are_part_of_a_small/', 'https://www.reddit.com/gallery/1y5gmzd', 'GamesThatFeelLike', 'Being a tiny, ordinary part of a ragtag militia fighting a much larger, better-equipped war machine.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5jwfu', 'Games where the hunted becomes the hunter', 'Games Where the Hunted Becomes the Hunter', 'Games where, in the beginning, the player is shown how fearsome/difficult/scary the enemy is, and the later stages offer the opportunity to outgrow them and become the threat.

Bonus points if it’s horror.

Could use more of those.

1. Prey (2017) - my favourite example. It''s literally in the name lol. Did a blind playthrough on the "Nightmare" difficulty. Was not disappointed.

2. Dying Light - volatiles are a threat throughout the majority of the game, but you''re bound to get an OP weapon eventually and start farming night chases.

3. Dead Space series - Isaac Clarke is an engineer who, at one point, realises that cutting unholy abominations into pieces is actually pretty damn effective.

4. The Forest/Sons of the Forest - you''re thrown into the woods without any explanation, forced to fight/flee hostile tribesmen and fleshy mutants. Later on, you make armor and furniture out of them.

5. Subnautica (1, Below Zero, and 2) - induces thalassophobia and actively tells you to keep away from threats, but you''re free to stun, scan, and chop leviathan lifeforms once you get the right gear.

6. Minecraft - kinda fits? Surviving the first night on harder difficulties requires a shelter, and you have to explore the world with caution. There''s a certain threshold where you stop caring about certain threats, and some gear requires you to fight things you were once careful of.

7. Terraria - same as MC, but Hardmode nullifies your "threat" status, and you have to earn it again.

8. Helldivers 2 - at first, you''re a rookie who can barely hold against a Hulk or a Charger. Later on, you''re nuking fortresses and calling Orbital Lasers on fcking Shai-Huluds.

9. ARC Raiders - pretty much the same as HD2. Even the smallest ARCs pose a threat at first. And then you find yourself bombing a colossal spider bot from across the map. Unless a fellow raider shoots you in the back before that, of course.

Honorable mentions (last but not least, I''m just too tired to describe them) - Resident Evil series and BioShock 1.', 'Dull-Palpitation-756', 1795643654, '/r/GamesThatFeelLike/comments/1y5jwfu/games_where_the_hunted_becomes_the_hunter/', 'https://www.reddit.com/gallery/1y5jwfu', 'GamesThatFeelLike', 'Starting as prey in a hostile world and growing powerful enough to turn the tables.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5l75x', 'Games that feel like lakehopper', 'Games That Feel Like Lakehopper', 'I love the simplified simulation of the planes and the building of them. However I want to be able to upgrade my plane, car or boat by doing jobs. I know of pacific drive and my summer car(love it just too grindy for me. Though I do want a Nissan cherry now) Any others that let you start with shitty part then slowly improve with resources?', 'SBSQWarmachine36', 1795647128, '/r/GamesThatFeelLike/comments/1y5l75x/games_that_feel_like_lakehopper/', 'https://i.redd.it/rm6yygot8u3i1.jpeg', 'GamesThatFeelLike', 'Making do with a barely functional starter vehicle and slowly earning upgrades through transport jobs.', 'publishable', NULL, NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', 'Lakehopper', 381376)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
INSERT INTO "imported_vibe_posts" ("reddit_post_id", "title", "cleaned_title", "selftext", "author", "created_utc", "permalink", "url", "subreddit", "vibe_summary", "status", "error_info", "processing_run_id", "created_at", "updated_at", "reference_title", "reference_igdb_id")
VALUES ('1y5mg3u', 'Bionicle!', 'Bionicle!', 'Okay im sure this has been done before but i cant find it.  
Im looking for a pc/switch game that feels like you are exploring an island, and have elemental powers. Bonus points for cool armor, and even better if its an action game. ', 'Johtoguy', 1795650613, '/r/GamesThatFeelLike/comments/1y5mg3u/bionicle/', 'https://www.reddit.com/gallery/1y5mg3u', 'GamesThatFeelLike', 'Tropical island exploration with elemental powers, cool armor, and action.', 'skipped', 'no enriched recommendation matches', NULL, '2026-11-26 02:21:07', '2026-11-26 02:21:07', NULL, NULL)
ON CONFLICT(reddit_post_id) DO UPDATE SET "title"=excluded."title", "cleaned_title"=excluded."cleaned_title", "selftext"=excluded."selftext", "author"=excluded."author", "created_utc"=excluded."created_utc", "permalink"=excluded."permalink", "url"=excluded."url", "subreddit"=excluded."subreddit", "vibe_summary"=excluded."vibe_summary", "status"=excluded."status", "error_info"=excluded."error_info", "processing_run_id"=excluded."processing_run_id", "updated_at"=excluded."updated_at", "reference_title"=excluded."reference_title", "reference_igdb_id"=excluded."reference_igdb_id";
