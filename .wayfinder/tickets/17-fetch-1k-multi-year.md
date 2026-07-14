---
id: 17
title: "Fetch enough data to total 1k posts (multi-year)"
type: task
parent: 10
status: closed
assignee: max
blocked_by: []
---

## Resolution

**Destination revised** from "1k posts" to "all reachable posts": Arctic Shift's per-query cap is ~100 posts (no pagination exposed by `arcshiftwrap`) and `r/MoviesThatFeelLike` has ~240-340 reachable posts across 2020, 2024, 2025, and 2026 (other years are empty). The verification target on the map has been updated accordingly.

**Fetches**:
- 2020: 2 posts (subreddit was inactive that year)
- 2024: 40 posts
- 2025: 100 posts (the per-query cap)
- 2026: 100 posts (reused the existing 100-post raw artifact on disk at `data/raw/arctic-shift-MoviesThatFeelLike-2026-20260713T225131Z.json`; no need to re-fetch and burn another upstream call)
- 3 fresh fetches (2020/2024/2025) ran in parallel, ~32s wall-clock total; no retries, no failures.

**Merge**: small new script `apps/pipeline/src/pipeline/merge_normalized.py` (~126 lines). Takes positional `inputs` (`nargs="+"`) and a required `--out` (the conventional output-path flag, not a tunable knob). Dedupes by `reddit_post_id` (first wins, though no cross-year dupes were found in this run). Merges `comments_by_post` (last wins on duplicate key, though keys are unique per post). Recomputes `summary` from the combined data: `post_count`, `image_count`, `post_without_images_count`, `source_count`. Per the user's "no knobs" preference, no new CLI flags were added to `normalize.py`; this is a separate stage that combines already-normalized outputs.

**Combined artifact** (`data/working/normalized/merged-all-years.json`, 22.5 MB):
- `post_count`: 242
- `image_count`: 1,147
- `post_without_images_count`: 21
- 242 comment trees, 1:1 with posts (verified — no orphans, no gaps)
- 4 source artifacts
- 0 duplicates skipped
- `source_artifacts` field records the paths of the merged inputs (replaceable in a future pass with relative paths for environment independence; harmless for now)

## Question

The 2026 archive only has ~100 posts in `r/MoviesThatFeelLike` so far. To get 1k for the verification run, fetch earlier years (2025, 2024, and back as far as needed) using `pipeline:fetch --year YYYY --limit 1000` per year. The current fetcher is per-year (Arctic Shift's date filter is by year); the work is to figure out the per-year limit and call counts, run the fetches, and combine the resulting raw artifacts into one normalized artifact. `pipeline:normalize` already reads the latest raw artifact; the refactor needed here is either to run `normalize` once per year and stitch the resulting JSONs together, or to add a `--input` mode to `normalize` that merges multiple raw artifacts. Pick whichever is smaller and reviewable. Verify the combined `data/working/normalized/*.json` has ≥ 1000 distinct `reddit_post_id` entries and that comment trees are present for each. Pre-existing data (the 2026 sample) is preserved — this is additive.
