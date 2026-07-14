---
id: 6
title: "Update loader for game records"
type: task
parent: 0
status: closed
assignee: max
blocked_by: [3, 5]
---

## Question

Update `apps/pipeline/src/pipeline/load.py` to upsert game recommendations into the new columns added by *Schema migration 0003*. Ensure `_upsert_recommendation` writes the external ID, external URL, cover, and platforms for game records; ensure the candidate-key dedup (currently `title|year|movie_or_tv`) still groups the same game across multiple posts; ensure the publishability gate (matched recommendation + usable image + vibe summary + permalink) works for posts whose only matches are games. Confirm a fresh load + D1 seed cycle writes the rows correctly.

## Resolution

Implemented by @fixer (reusing the session that did ticket 5 — it had the match-record contract in context). One file: `apps/pipeline/src/pipeline/load.py`.

### Three changes

**1. `_upsert_recommendation` now dispatches on `media_type`** (lines 287–414 in the new file):

- **`"game"`** branch: lookup by `igdb_id + media_type`; on update, writes `igdb_id`, `external_url`, `platforms` (JSON-encoded list), reused columns (`title`, `original_title`, `release_year`, `poster_url`, `backdrop_url`, `overview`, `popularity`, `vote_average`), and explicitly sets `imdb_id=NULL`, `tmdb_data=NULL`, `is_ambiguous=0`. INSERT follows the same shape with the same explicit NULLs.
- **`"movie"` / `"tv"`** branch: existing `tmdb_id + media_type` lookup unchanged, but now also explicitly writes `igdb_id=NULL`, `external_url=NULL`, `platforms=NULL` so the row's media_type semantics are clean.
- **`"unknown"`** branch: logs a warning and returns `-1` (defensive — the enrichment stage already routes these to `unmatched`, but if one ever lands here the loader doesn't crash).

**2. Column-presence check extended** (line 849–850): added a check that `igdb_id` is in `rec_cols`. The existing error message ("Run with --reset to re-create the DB from migrations, or manually apply `packages/db/migrations/0003_games.sql`") is still accurate for this case — no text change needed.

**3. Evidence linking lookup** (around line 977) was already keyed on `tmdb_id` only — that's now also branched: `media_type == "game"` → lookup by `igdb_id + media_type`, otherwise the existing `tmdb_id + media_type` path. This was a real bug latent in the original code that surfaced once we started writing game rows: an evidence row whose parent recommendation was a game would have failed to find the parent. Fixer caught it during the verification.

### What was NOT changed

- `_candidate_key(title, year, media_type)` — already includes `media_type` in the key, so "Tomb Raider" the game and "Tomb Raider" the movie dedup correctly.
- Publishability gate — counts matches regardless of media_type. A game-only post with at least one matched game is publishable.
- `recommendation_evidence` schema — FK to `recommendations(id)` is preserved by the 0003 migration.
- `apps/astro/src/lib/db.ts` — that's ticket 7. The new columns are nullable, so existing SELECTs still work.
- The `evidence_score` formula at the end of `main` — works on `recommendation_evidence` rows, not on the new columns.

### Verification (all 6 checks passed)

1. `py_compile` clean.
2. **Smoke-load against an in-memory DB with 0001+0002+0003 applied**: a game record (`igdb_id=26472`, `external_url=...`, `platforms='["PC (Microsoft Windows)","Mac"]'`) lands with `igdb_id`, `external_url`, `platforms` populated and `tmdb_id`/`imdb_id`/`tmdb_data` NULL. A movie record (`tmdb_id=680`) lands with `tmdb_id` populated and the new game columns NULL.
3. **Re-insert test**: upserting the same game with a changed `external_url` and `platforms` updates the row in place (no duplicate, count stays 2).
4. **Column-presence on a 0002-only DB**: the new check fires, message mentions `recommendations.igdb_id`, points at `0003_games.sql`.
5. **End-to-end load against a real enrichment artifact**: the `data/working/load-d1.sql` dump has INSERT statements with the new columns populated for game rows and NULLed for movie rows.
6. **Movie-only backward compat**: a movie-only enrichment artifact loads with the same row count and column shape as before this change.

### Deviations from spec

None. All three changes follow the spec precisely.

### Handoff to ticket 7

The D1 side is now ready: a real `pipeline:load` run will write game rows with `igdb_id`, `external_url`, `platforms` populated. The UI is the last layer that needs to render these. Specifically:

- `apps/astro/src/pages/posts/[id].astro` — the rec card list currently shows `🎬 Movie` / `📺 TV` badges; needs a `🎮 Game` branch that links to the IGDB `external_url` instead of building a TMDB URL.
- `apps/astro/src/pages/recommendations/[id].astro` — currently builds a TMDB URL and shows `tmdb_id` / `imdb_id`. Needs a game branch that uses `igdb_id` + `external_url` and renders the `platforms` list.
- `apps/astro/src/lib/db.ts` — the `Recommendation` TypeScript type should grow `igdb_id: number | null`, `external_url: string | null`, `platforms: string | null` as optional fields. No SELECT changes are needed; the existing queries already pull all columns.

The front-end changes are mechanical, but a small one in `db.ts` is needed so the UI type knows the new fields exist.
</content>
</invoke>