---
id: 3
title: "Schema migration 0003: extend recommendations for games"
type: task
parent: 0
status: closed
assignee: max
blocked_by: [2]
---

## Question

Implement the schema migration extending the `recommendations` table for games. Add the new `game` value to the `media_type` CHECK constraint, add the new columns decided in the *Design game schema additions* ticket, and write `0003_games.sql` under `packages/db/migrations/`. Confirm it applies cleanly to a fresh DB and to a DB already at 0002.

## Resolution

Wrote `packages/db/migrations/0003_games.sql`. The temp-table recreation pattern is used for the CHECK constraint change (SQLite has no `ALTER TABLE … DROP CONSTRAINT`). Foreign keys are disabled around the DROP+RENAME so the `recommendation_evidence.recommendation_id` references survive.

Verified both ways it can be applied:

**1. Fresh DB** (`0001` → `0002` → `0003`):

```
recommendations columns include: igdb_id, external_url, platforms, tmdb_data (preserved)
recommendations indexes include: idx_recommendations_igdb_id (new)
media_type CHECK accepts: 'movie', 'tv', 'game'
media_type CHECK rejects: 'podcast' → CHECK constraint failed: media_type IN ('movie', 'tv', 'game')
recommendation_evidence FK joins to game rows: ok
```

**2. Pre-existing DB at 0002** (one movie + one evidence link, then `0003`):

```
pre-0003 row preserved: (1, 'Pulp Fiction', 'movie', 680)
new 'game' row insertable
post-migration join through recommendation_evidence to imported_vibe_posts: ok
CHECK still rejects 'podcast' after migration
idx_recommendations_igdb_id present
```

Both verifications used `apps/pipeline/.venv/bin/python` against an in-memory SQLite with the project's own `db.executescript(sql)` pattern (the same call shape `pipeline/load.py:_apply_migrations` uses). The D1 path is structurally identical — Wrangler reads from the same `migrations_dir` in `apps/astro/wrangler.jsonc` and applies each `*.sql` file in order — so the same guarantees carry over.

### Caller-side follow-up for ticket 6

`pipeline/load.py` has a column-presence check that runs when the DB already exists and `--reset` is not set:

```python
if "evidence_score" not in rec_cols:
    missing.append("recommendations.evidence_score")
if "evidence_comment_score" not in ev_cols:
    missing.append(...)
```

That check is hardcoded for 0002's columns. If a user runs the loader against a DB that's at 0002 with 0003 unapplied, the check passes (because `evidence_score` is present) but the loader will fail later with a cryptic `no such column: igdb_id` error the first time it tries to write a game record. Ticket 6 — *Update loader for game records* — should extend the check to also require `igdb_id` and emit the same "run with --reset or apply 0003 manually" message that's already there for 0002.
</content>
</invoke>