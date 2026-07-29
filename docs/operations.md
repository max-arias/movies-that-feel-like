# Production Reddit import operations

The production import is `.github/workflows/import-reddit.yml`. It runs at
`00:00 UTC` every day (`0 0 * * *`), and can also be started with
**Run workflow**. The import currently targets the fixed source year `2026`
and fetches newest first with `--sort desc`.

## Configuration

Configure these GitHub Actions values in the repository's **production
environment** settings:

- Secret `CLOUDFLARE_API_TOKEN`, using the least-privilege Cloudflare API token
  scope **Account → D1 → Edit only**.
- Variable `CLOUDFLARE_ACCOUNT_ID`.
- Secrets `OPENCODE_GO_API_KEY`, `TMDB_ACCESS_TOKEN`, `TWITCH_CLIENT_ID`, and
  `TWITCH_CLIENT_SECRET` (Twitch is required because game enrichment is active).

The workflow uses Node 22, Python 3.11, Bun with `bun install --frozen-lockfile`,
`uv sync --locked`, npm pipeline commands, and
`apps/astro/wrangler.jsonc`. Secrets are supplied only as environment
variables; do not print them or put them in artifacts.

Manual runs accept `limit` (default `100`), `max_pages` (default `50`), and
`apply_only`, and `verify_cache_round_trip`. Both numeric inputs must be
positive integers. The optional round-trip check reruns at most three original
posts using re-exported cache snapshots; it never feeds probe output to load
and requires cache hits with no provider calls or cache writes.
`apply_only` skips the D1 post-ID query, fetch/pipeline, commit, and push
entirely. Checkout credentials are not persisted, and the GitHub write token
is exposed only to the commit/push step.

## Run and recovery

Each normal import first queries production D1 for every
`imported_vibe_posts.reddit_post_id`. It writes those IDs to a temporary
newline-delimited file and passes that file to both fetch (`--exclude-reddit-ids-file`)
and normalize. New data then runs through fetch, normalize, extract, enrich,
and load. Each stage receives an explicit artifact path from this run; no
stage selects a newest artifact implicitly. Fetch and normalize both receive
the production exclusion file.

Extraction runs with `--allow-errors`, so an individual extraction failure is
tolerated and that post is deferred while successful posts continue through the
pipeline. Enrich runs with `--allow-failed-extraction`, and load runs with
`--allow-partial-extraction`, which loads only posts with successful extraction
results. Failed posts are not marked imported or skipped and remain eligible
for a later refresh. If every extraction fails, load stops; errors from
enrichment or loading still fail the workflow before commit and apply.

After extraction and again after enrichment, the workflow renders cache
observations with the repository's `npm run pipeline:cache-sql` script (which
supplies `PYTHONPATH`), validates every manifest/chunk checksum and record
count, and verifies remote D1 rows/identities after executing each listed chunk
with `wrangler d1 execute --file`. Empty manifests are explicit no-ops. Cache
DML is operational append-only state: it is never applied with `d1 migrations
apply` and never enters a reviewed migration. Snapshots select the newest
fresh row per complete cache identity, compare returned counts with eligible
counts, and restrict enrichment snapshots to the compatible payload schema.

`load` creates data migrations under `packages/db/migrations`; the workflow
canonicalizes manifest paths to repository-relative paths and opens a review
PR containing only those exact paths. Cache SQL, source artifacts, and
manifests are uploaded as run evidence. The bot identity is configured for the
commit and `gh auth setup-git` configures the GitHub-supported `GH_TOKEN`
credential helper for the push; checkout remains credential-free. Existing PRs
are reused and orphan branches are refused.
Review and merge that PR, then use `apply_only: true` to apply committed
migrations. A load or enrichment error stops before the PR is created;
extraction errors are tolerated per post as described above.

For historical image URLs, first re-fetch and normalize the target posts. The
normalized artifact embeds one explicit successful refetch outcome per fetched
post; unavailable target outcomes can be supplied in the raw artifact. Then
generate row-safe updates (never reset or reinsert historical image rows):

```sh
npm run pipeline:backfill-images -- --db data/app.db \
  --normalized data/working/normalized/normalized-<artifact>.json \
  --out data/working/image-backfill.sql
```

For migration recovery, dispatch manually with `apply_only: true`. The
workflow performs a status check, lists the pending migrations that are already
tracked in the checked-out `main`, verifies each path, and applies that set
with tracked `d1 migrations apply --remote`. If none are pending it reports a
safe no-op. Do not use raw `d1 execute --file` or create a second migration
commit for recovery. If apply fails, inspect `d1_migrations`, confirm the
original commit is on `main`, and rerun `apply_only`.

If a run finds no new Reddit posts, later stages are skipped, no migration is
generated, and no commit or remote D1 write is made. This is an expected
successful no-op only when the fetch scan was complete. A fetch artifact with
`summary.pagination_truncated: true` fails before extraction/loading and is
not treated as a successful no-op. Dispatch a controlled backfill with
`apply_only: false`, the same or a bounded `limit`, and a higher `max_pages`,
then review the resulting migration normally.

## Failure triage

1. **D1 query/authentication:** verify the Cloudflare token, account variable,
   database access, and `apps/astro/wrangler.jsonc` database identity.
2. **Fetch/normalize:** inspect Arctic Shift availability and the run's raw
   artifact; confirm the exclusion query completed before normalization.
3. **Extract/enrich:** verify the OpenCode, TMDB, and Twitch credentials. Any
   enrichment artifact error fails the workflow before load, so fix credentials
   and retry rather than allowing incomplete posts to be excluded or loaded.
4. **Review PR:** ensure contents and pull-request write permission and branch
   pushes are available. Only manifest-listed migration SQL is staged; an open
   import PR intentionally blocks a second normal run.
5. **Remote apply:** confirm the migration commit is on `main`, inspect the
   remote `d1_migrations` history, and rerun the manual `apply_only` recovery.
   Do not apply raw SQL files or create a second migration commit during
   recovery.
