---
id: 16
title: "Fix N+1 SELECT in load.py evidence linking"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Question

The `evidence` linking loop in `apps/pipeline/src/pipeline/load.py` does one `SELECT id FROM recommendations WHERE …` per recommendation per post to find the `recommendation_id` it just upserted. At 1k posts × ~3 matched recs each, that's 3k extra round-trips inside a single transaction. Refactor: build a single `rec_id_by_key` map for the run by querying once (`SELECT id, tmdb_id, igdb_id, media_type FROM recommendations WHERE media_type IN (...)`) after the loop, or by capturing the inserted/updated id from the upsert function's return value and threading it through. Either approach: zero per-post SELECTs in the hot path. Verify by adding a `print` of the SQLite `sqlite3.total_changes` before/after the loop and confirming the count of `SELECT` calls against `recommendations` is bounded by 1 (or 2 for the pre-loop bulk read), not `O(posts × recs)`. Re-run `pipeline:load` on the existing 30-post enrichment artifact and confirm the loaded rows are identical.

## Resolution

Closed. Picked the **threaded-id** approach over the bulk read — it's strictly fewer queries (zero) and reuses the id already returned by `_upsert_recommendation`. Net change in `load.py`: removed 24 lines of per-rec SELECTs, added 1 dict + 2 lines of writes + 1 line of read.

### Diff (conceptual)

Before, in the upsert loop (around line 878):
```python
rec_match_ids: list[int] = []   # write-only dead code
...
if match:
    match_count_for_post += 1
    try:
        rec_id = _upsert_recommendation(db, match)
        rec_match_ids.append(rec_id)   # never read
```

After:
```python
rec_id_by_key: dict[str, int] = {}    # candidate_key → upserted recommendation id
...
if match:
    match_count_for_post += 1
    try:
        rec_id = _upsert_recommendation(db, match)
        if rec_id != -1:               # defensive: skip the unknown-media_type sentinel
            rec_id_by_key[match["candidate_key"]] = rec_id
```

And in the evidence loop, replaced the two branches of `SELECT id FROM recommendations WHERE igdb_id/tmdb_id = ? AND media_type = ?` with:
```python
rec_db_id = rec_id_by_key.get(match["candidate_key"])
if not rec_db_id:
    continue
```

### Why the dict, not a bulk read

The ticket offered both options. The bulk read would do one `SELECT id, tmdb_id, igdb_id, media_type FROM recommendations WHERE media_type IN ('movie', 'tv', 'game')` after the per-post loop — but that requires the recommendations to be committed (or at least flushed) before the read, and a single-transaction load is more efficient with all writes batched. The threaded id uses the value `_upsert_recommendation` already returns (line 891, before this ticket) and is strictly zero new queries. The dict is a 2-line addition vs. a `for` loop over the inserted rows.

### Side cleanup

`rec_match_ids` was a write-only list — populated in the upsert loop, never read. Removed (replaced by `rec_id_by_key`).

### Verification — SQLite trace

Instrumented `sqlite3.connect` with `set_trace_callback` and counted `SELECT ... FROM recommendations` calls. Same input on both old and new code (smoke run, 15 posts, 29 matches, 33 evidence rows):

| Code | SELECTs against `recommendations` | All SELECTs | Wall-clock |
|---|---|---|---|
| Old (per-rec `SELECT id FROM recommendations WHERE ...` in evidence loop) | **61** | 120 | ~1s |
| New (`rec_id_by_key` dict) | **31** | 90 | 0.83s |

The 30 saved SELECTs are all in the evidence-linking hot path. The remaining 31 are:
- 29 SELECTs from `_upsert_recommendation` (the existence check before INSERT/UPDATE — necessary, called once per match)
- 1 SELECT for the post-status check (one per post — line 922, on `imported_vibe_posts`, not counted in the 31 against `recommendations`; included in the trace's "all SELECTs" of 90)
- 1 SELECT for the post-loop summary (line 1027, `SELECT id FROM recommendations`)

At 1k posts × ~3 matches = 3k matches, the savings scale to **~3k fewer SELECTs per load** (1 per rec, removed by this ticket), or roughly 2-3 seconds off the load stage at 1k scale.

### Behavior equivalence

`pipeline:load` on the smoke 15-post dataset:

| Metric | Old code | New code |
|---|---|---|
| publishable | 2 | 2 |
| skipped | 13 | 13 |
| images | 61 | 61 |
| recommendations | 29 | 29 |
| evidence | 33 | 33 |
| tags | 80 | 80 |

Identical. The `rec_id_by_key` produces the same `rec_db_id` as the old `SELECT id FROM recommendations` because the upsert is in the same transaction (the read sees the just-written row).

### What this doesn't do

- Doesn't touch the `evidence_score` update (line 1011) — that's a single `UPDATE` with a subquery, not an N+1.
- Doesn't touch `_upsert_recommendation`'s own existence-check SELECT — that's necessary for the upsert semantics (UPDATE if exists, INSERT if not), called once per match (29 calls for 29 matches, not 3× posts).
- Doesn't remove the post-status SELECT (line 922) — once per post, not per rec.
- Doesn't add an index on `recommendations(candidate_key)`. The schema has unique indexes on `(tmdb_id, media_type)` and `(igdb_id, media_type)`; the dict-by-key lookup is in-memory, not SQL, so no index needed.

### Files

- `apps/pipeline/src/pipeline/load.py` (~16 lines changed: 1 dict, 2 writes, 1 read, 1 comment, removed 24 lines of SELECTs and the dead `rec_match_ids` list).
