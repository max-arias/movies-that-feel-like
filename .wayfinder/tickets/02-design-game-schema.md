---
id: 2
title: "Design game schema additions"
type: grilling
parent: 0
status: closed
assignee: max
blocked_by: []
---

## Question

What columns does the `recommendations` table need to support games, and how does the `media_type` CHECK constraint change? Decide: how the new `game` value enters the enum, what nullable columns to add for the minimum metadata scope (external ID, external URL, cover URL, platforms), whether `tmdb_id`/`imdb_id` remain game-NULL or get repurposed, and how the candidate-key dedup in `pipeline/load.py` will continue to work for games (it currently keys on `title|year|movie_or_tv`). Lock the schema additions so the migration ticket can proceed without re-deciding.

## Resolution

**Note on process:** the human delegated design authority to the agent for this ticket ("go ahead and design the game schema"). The agent is acting on that delegation — push back on any individual call, but the design as a whole is one person's coherent pick, not a synthesis.

### Summary

Add three new nullable columns to `recommendations`, extend the `media_type` CHECK to include `'game'`, and switch the loader's upsert lookup to choose the right external-ID column based on `media_type`. Everything else (candidate key, evidence table, publishability gate, indexes) stays as-is.

### New columns

| Column        | Type    | Purpose for games                                                                 | For movies/TV |
|---------------|---------|------------------------------------------------------------------------------------|---------------|
| `igdb_id`     | INTEGER | IGDB canonical game ID. The "external ID" for the `game` media_type.               | Always NULL   |
| `external_url`| TEXT    | Full URL to the IGDB game page (e.g. `https://www.igdb.com/games/{slug}`).         | NULL (URLs continue to be built from `tmdb_id` / `imdb_id` in the UI) |
| `platforms`   | TEXT    | JSON-encoded array of platform name strings (e.g. `["PC","PlayStation 5","Switch"]`). | Always NULL   |

### Reused columns (game semantics documented, not enforced)

| Column         | Movie/TV meaning                 | Game meaning                                                |
|----------------|----------------------------------|-------------------------------------------------------------|
| `poster_url`   | TMDB poster                      | IGDB cover art URL (built by replacing `t_thumb` → `t_cover_big` per the catalog asset) |
| `overview`     | TMDB plot                        | IGDB `summary`                                              |
| `release_year` | TMDB release year                | IGDB `first_release_date` (year extracted from Unix ts)     |
| `popularity`   | TMDB popularity                  | Leave NULL — IGDB has no direct analog and we picked the minimum metadata scope |
| `vote_average` | TMDB rating                      | Leave NULL — same reasoning                                 |
| `imdb_id`      | IMDb ID                          | NULL — games have no IMDB ID in this schema                 |
| `tmdb_id`      | TMDB ID                          | NULL                                                         |
| `is_ambiguous` | Unresolved candidate flag        | Reused as-is for unresolved game candidates                 |

`tmdb_data` is intentionally **not** reused. The user pushed back on storing the raw IGDB response, and the pushback is correct: a `grep` for `tmdb_data` across the repo shows the column is *written* by `load.py` but *never read* by any other stage, the UI, or the inspector. Adding an IGDB raw-response payload would compound the same dead-storage mistake. The loader's match record can keep an in-memory `raw_result` for debugging without persisting it. (Cleaning up the movies/TV write into `tmdb_data` is a separate concern — out of scope here per the standing preference that the movies/TV pipeline stays untouched in shape.)

### CHECK constraint

`media_type` extends to `IN ('movie', 'tv', 'game')`. SQLite has no `ALTER TABLE … DROP CONSTRAINT`, so the constraint change goes through the standard temp-table migration (CREATE new → INSERT SELECT → DROP old → RENAME). Acceptable for a hobby-scale D1.

### Migration approach (for ticket 3)

Pseudo-SQL for the migration file `0003_games.sql`:

```sql
CREATE TABLE recommendations_new (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    tmdb_id         INTEGER,
    imdb_id         TEXT,
    igdb_id         INTEGER,                       -- NEW
    title           TEXT    NOT NULL,
    original_title  TEXT,
    media_type      TEXT    NOT NULL DEFAULT 'movie'
                        CHECK (media_type IN ('movie', 'tv', 'game')),
    release_year    INTEGER,
    poster_url      TEXT,
    backdrop_url    TEXT,
    overview        TEXT,
    external_url    TEXT,                          -- NEW
    platforms       TEXT,                          -- NEW: JSON array of platform name strings
    tmdb_data       TEXT,
    popularity      REAL,
    vote_average    REAL,
    is_ambiguous    INTEGER NOT NULL DEFAULT 0,
    evidence_score  REAL    NOT NULL DEFAULT 0,
    created_at      TEXT    NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT    NOT NULL DEFAULT (datetime('now'))
);

INSERT INTO recommendations_new
    SELECT id, tmdb_id, imdb_id, NULL, title, original_title, media_type,
           release_year, poster_url, backdrop_url, overview, NULL, NULL, tmdb_data,
           popularity, vote_average, is_ambiguous, evidence_score,
           created_at, updated_at
    FROM recommendations;

DROP TABLE recommendations;
ALTER TABLE recommendations_new RENAME TO recommendations;

-- Recreate indexes (the old ones are gone with the old table)
CREATE INDEX idx_recommendations_tmdb_id    ON recommendations(tmdb_id);
CREATE INDEX idx_recommendations_igdb_id    ON recommendations(igdb_id);   -- NEW
CREATE INDEX idx_recommendations_title      ON recommendations(title);
CREATE INDEX idx_recommendations_ambiguous  ON recommendations(is_ambiguous);
```

Notes on the migration: existing rows are preserved; `recommendation_evidence` (which holds FKs to `recommendations.id`) is unaffected because the `id` column carries over. The `pipeline_artifacts` table is unaffected. `--reset` vs. non-`--reset` paths in `pipeline/load.py` already handle "apply all migrations" correctly — the new `0003_games.sql` will be picked up automatically.

### Loader changes (covered by ticket 6)

`_upsert_recommendation` in `pipeline/load.py` switches its lookup by `media_type`:

- For `'movie'` / `'tv'`: lookup by `tmdb_id + media_type` (current behavior).
- For `'game'`: lookup by `igdb_id + media_type`.

The candidate-key function `_candidate_key(title, year, media_type)` already includes `media_type` in its key, so the same title for both a movie and a game is dedup'd correctly. No change to the candidate-key function.

### What does NOT change

- `recommendation_evidence` table — pure join, no schema change.
- `imported_vibe_posts`, `imported_post_images`, `vibe_tags`, `processing_runs`, `pipeline_artifacts` — unaffected.
- The Pydantic `ExtractedRecommendation.media_type` Literal — its `'game'` addition is part of ticket 4 (the extraction prompt + model update ticket).
- The publishability gate (need image + vibe summary + ≥1 enriched match + permalink) — a game-only post is publishable as long as its single game match is enriched, just like a movie-only post.
- `apps/astro/src/lib/db.ts` — new columns are nullable, existing SELECTs still work. The `Recommendation` TypeScript type should grow `igdb_id`, `external_url`, `platforms` as optional fields, but no query changes are needed (covered by ticket 7).
- The DB index strategy — we add `idx_recommendations_igdb_id` for game lookups; existing indexes cover movies/TV.
- The `tmdb_data` column — preserved as-is for movies/TV. The existing loader writes raw TMDB JSON into it; that's untouched. The fact that no other stage reads it is a separate cleanup item, not in scope for the games effort.

### Loader notes (covered by ticket 6)

- For game records, the loader's `_upsert_recommendation` writes `tmdb_data = NULL`. (No code change to the movies/TV path; the column is just left out of the game branch of the upsert.)
- The `match` dict the IGDB provider hands to the loader can still carry an in-memory `raw_result` for debugging — it just doesn't get persisted. Keeps the debuggability without the dead storage.

### Open considerations (call out for ticket 5/7)

- The `platforms` column uses JSON-encoded TEXT, not a real array. SQLite has `json_each()` for querying, but the UI is expected to render the list directly. If we ever need "filter posts by platform" or "join platform → other posts", we'd normalize into a `platforms` table — but the destination says minimum metadata, so we don't.
- The `external_url` column is only populated for games. For symmetry, the loader *could* also populate it for movies (e.g. `https://www.themoviedb.org/movie/{tmdb_id}`), but that touches the existing movie path and isn't required for the destination. Out of scope.
- Out of scope (separate effort, if ever): the `tmdb_data` column for movies/TV is write-only — the loader populates it and no other stage reads it. Cleaning that up is a one-line loader change plus an optional column drop, but it's a separate decision.
</content>
</invoke>