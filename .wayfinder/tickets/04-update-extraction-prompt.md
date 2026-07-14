---
id: 4
title: "Update extraction to surface game recommendations"
type: grilling
parent: 0
status: closed
assignee: max
blocked_by: []
---

## Question

How should the extraction prompt and Pydantic models change to surface game recommendations from r/MoviesThatFeelLike comments? Update `SYSTEM_INSTRUCTION` in `apps/pipeline/src/pipeline/extraction_input.py` and the `media_type` `Literal` on `ExtractedRecommendation` in `apps/pipeline/src/pipeline/models.py` so the LLM is asked to extract concrete game titles in addition to movies/series, and the schema accepts the new value. Decide: what the new prompt rules say, how to handle the same comment recommending both a movie and a game, and whether the existing checkpoint invalidation (`schema_version = "post-extraction-v1"`) needs bumping.

## Resolution

**Note on process:** the human delegated design authority to the agent for this ticket ("lets go ahead with 04"), following the same pattern as the schema design ticket. Push back on any individual call; the design as a whole is one coherent pick.

### Code changes

**1. `apps/pipeline/src/pipeline/models.py`** — extended the `ExtractedRecommendation.media_type` `Literal` from `["movie", "tv", "unknown"]` to `["movie", "tv", "game", "unknown"]`. Docstring widened from "movie or series" to "movie, series, or video game". `RecommendationEvidence` docstring broadened in parallel.

**2. `apps/pipeline/src/pipeline/extraction_input.py`** — `SYSTEM_INSTRUCTION` rewritten:

- "movie and TV series" → "movie, TV series, and video game titles"
- New game-specific rule: "A video game recommendation should be a single concrete game (e.g. 'Disco Elysium', 'The Witcher 3', 'Stardew Valley'). Skip DLC, mods, and game series without a specific entry; skip cases where only a console or platform is named (e.g. 'play more Switch games' is not a recommendation)."
- media_type enum in the prompt updated to "movie/tv/game/unknown"

The vibe-summary rules and the "ignore the post author's own text" rule are unchanged — vibe summaries are media-type-agnostic, and the author-ignore rule applies to games the same way it does to movies.

**3. `apps/pipeline/src/pipeline/extract.py`** — `EXTRACTION_SCHEMA_VERSION` bumped from `"post-extraction-v1"` to `"post-extraction-v2"`. The version appears in three places (run-identity hash, `prompt_hash` for checkpoint invalidation, the checkpoint records themselves), so old v1 checkpoints will be treated as invalid and the pipeline will re-extract from scratch the next time `pipeline:extract` runs. That's the intended behavior — both the schema and the prompt changed.

### How the mixed-rec case is handled

The current `ExtractedRecommendation.evidence` list can already point to multiple comments, but each `ExtractedRecommendation` carries exactly one `media_type`. So when a single comment says "try Disco Elysium and Blade Runner 2049," the LLM should produce **two** `ExtractedRecommendation` entries: one with `media_type="game"` (Disco Elysium) and one with `media_type="movie"` (Blade Runner 2049). Both can carry the same `evidence` array pointing at the same comment. No model change was needed for this; the new prompt rule makes it explicit.

### Verification

Ran Pydantic round-trip + prompt construction against the venv:

```
media_type enum: ['movie', 'tv', 'game', 'unknown']   # 'game' added, others unchanged
Validation rejects unknown media_type: ValidationError
Round-trip ok; first rec media_type = game
SYSTEM_INSTRUCTION mentions "video game" and "movie/tv/game/unknown"
build_extraction_prompt() produces a well-formed user prompt (706 chars)
```

A real extraction run (consuming API calls against `deepseek-v4-flash`) is deferred to ticket 8 (end-to-end smoke) — that's the right place to validate that the LLM actually picks up game mentions in real Reddit comments, which the dry-run can't show.

### Risks (called out for ticket 8 / future follow-up)

- **LLM game-detection quality** is the real risk and we won't know until a real run. The `deepseek-v4-flash` model is small; the existing one-post sample returned 38 movie candidates and only 5 survived TMDB enrichment, so there's precedent for noisy extraction. The new game rule explicitly excludes ambiguous cases ("play more Switch games") to reduce the noise floor, but real-volume validation is needed.
- **Extraction volume** may grow meaningfully once games are in scope, since `r/MoviesThatFeelLike` posts occasionally recommend games. The enrichment stage's `--limit` flag (already in use) caps the volume to the provider; the loader's match-count logic counts games and movies equally, so the publishability gate should still trigger as long as at least one match (of either kind) survives.
- **Confidence calibration** for games may be less accurate than for movies (the LLM is being asked to recognize a domain it may not have seen as much of). The `confidence` field is optional and used only for the `evidence_score` ranking formula in `load.py`; games will just rank lower if confidence is unset.
</content>
</invoke>