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

Manual runs accept `limit` (default `100`), `max_pages` (default `10`), and
`apply_only`. Both numeric inputs must be positive integers; a small `limit`
is useful for a controlled smoke run.
`apply_only` skips the D1 post-ID query, fetch/pipeline, commit, and push
entirely. Checkout credentials are not persisted, and the GitHub write token
is exposed only to the commit/push step.

## Run and recovery

Each normal import first queries production D1 for every
`imported_vibe_posts.reddit_post_id`. It writes those IDs to a temporary
newline-delimited file and passes that file to both fetch (`--exclude-reddit-ids-file`)
and normalize. New data then runs through fetch, normalize, extract, enrich,
and load.

Extraction runs with `--allow-errors`, so an individual extraction failure is
tolerated and that post is deferred while successful posts continue through the
pipeline. Enrich runs with `--allow-failed-extraction`, and load runs with
`--allow-partial-extraction`, which loads only posts with successful extraction
results. Failed posts are not marked imported or skipped and remain eligible
for a later refresh. If every extraction fails, load stops; errors from
enrichment or loading still fail the workflow before commit and apply.

`load` creates data migrations under `packages/db/migrations`; pipeline commands
do not commit or push them. Apply generated SQL through the repository's normal
reviewed migration process. A load or enrichment error stops before migration
generation; extraction errors are tolerated per post as described above.

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
4. **Commit/push:** ensure the workflow has contents write permission and that
   the repository branch accepts pushes. Only migration SQL may be staged.
5. **Remote apply:** confirm the migration commit is on `main`, inspect the
   remote `d1_migrations` history, and rerun the manual `apply_only` recovery.
   Do not apply raw SQL files or create a second migration commit during
   recovery.
