# Production Reddit import operations

## Cloudflare Pages static build

Set the Pages production build command to `npm run cf:build` (from the
repository root). The build uses the locally pinned Wrangler CLI to read
publishable D1 rows and atomically generate the static snapshot before running
Astro. It does **not** apply migrations and therefore only needs a D1 Read
token.

Apply production migrations separately, with the privileged release credential,
using `npm run db:migrate:remote`. Do not use that command as the Pages build
command.

Configure these Pages production values:

- Secret `CLOUDFLARE_API_TOKEN`: an account API token with **Account → D1 →
  Read** scope (read-only is sufficient for the snapshot).
- Variable `CLOUDFLARE_ACCOUNT_ID`: the Cloudflare account ID.
- Optional variable `D1_DATABASE_NAME`: production D1 database name; defaults to
  `movies-that-feel-like`.

Preview builds have separate Pages environment variables/secrets. Configure
the account ID and read-only token there too, or preview builds cannot query D1.
If a preview database is used, set `D1_DATABASE_NAME` to that database; without
that override, previews read the production database. The generated snapshot
is ignored by git. Clean checkouts use an empty in-memory fallback until a
credentialed build generates the snapshot.

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
`verify_cache_round_trip`. Both numeric inputs must be positive integers. The
optional round-trip check reruns at most three original posts using re-exported
cache snapshots; it never feeds probe output to load and requires cache hits
with no provider calls or cache writes.

GitHub Actions uses the production environment's D1 **Edit** token because the
workflow applies the generated migrations. This is separate from the Pages
build secret above, which is D1 **Read** only. Checkout credentials are not
persisted, and the GitHub write token is exposed only to the final apply/push
step.

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
canonicalizes manifest paths to repository-relative paths and uploads cache SQL,
source artifacts, manifests, and those migration files as run evidence. The
final release sequence stages and verifies only the exact paths listed by the
load manifest, commits them locally on checked-out `main`, and publishes a
non-PR recovery ref containing that commit. Before any D1 mutation it fetches
`origin/main` and requires it to equal the release commit's parent. It then
compares local and remote migration histories: remote-only entries must be
empty, and local-only entries must equal the manifest exactly. Only after those
guards does it apply the remote D1 migration set, then push `HEAD:main`. D1
application happens before the main push so the Pages build triggered by that
push reads the new data. The bot identity is configured for the commit and
`gh auth setup-git` uses the GitHub-supported `GH_TOKEN` credential helper; no
pull request is created.

A load or enrichment error stops before D1 application or the commit. If D1
application succeeds but the main push fails, the recovery ref is intentionally
retained. Do not rerun the import or generate another migration; push the
release commit from that ref to `main`, then verify `d1_migrations` and the
resulting Pages deployment. If main was pushed but Pages has not rebuilt,
inspect or retry the Pages deployment. Recovery refs are not pull requests and
must be deleted manually if automatic cleanup cannot remove them. The Pages
token remains read-only.

For historical image URLs, first re-fetch and normalize the target posts. The
normalized artifact embeds one explicit successful refetch outcome per fetched
post; unavailable target outcomes can be supplied in the raw artifact. Then
generate row-safe updates (never reset or reinsert historical image rows):

```sh
npm run pipeline:backfill-images -- --db data/app.db \
  --normalized data/working/normalized/normalized-<artifact>.json \
  --out data/working/image-backfill.sql
```

Before every normal import, the workflow compares tracked migration filenames
on `main` with production `d1_migrations` in both directions and refuses to
proceed if either side has an entry the other lacks. This protects against
applying new data against a stale or unexpected schema. The release-time guard
repeats the comparison after the local commit, allowing only the manifest's
new migration names to be local-only. For recovery after a failed direct push,
inspect `d1_migrations` and the recovery ref's commit first; never create a
second migration for the same import or use raw cache DML as a substitute. The
privileged operator may use `npm run db:migrate:remote` only for an intentional
release recovery, with the production D1 Edit credential.

If a run finds no new Reddit posts, later stages are skipped, no migration is
generated, and no commit or remote D1 write is made. This is an expected
successful no-op only when the fetch scan was complete. A fetch artifact with
`summary.pagination_truncated: true` fails before extraction/loading and is
not treated as a successful no-op. Dispatch another normal run with the same
or a bounded `limit` and a higher `max_pages` for a controlled backfill.

## Failure triage

1. **D1 query/authentication:** verify the Cloudflare token, account variable,
   database access, and `apps/astro/wrangler.jsonc` database identity.
2. **Fetch/normalize:** inspect Arctic Shift availability and the run's raw
   artifact; confirm the exclusion query completed before normalization.
3. **Extract/enrich:** verify the OpenCode, TMDB, and Twitch credentials. Any
   enrichment artifact error fails the workflow before load, so fix credentials
   and retry rather than allowing incomplete posts to be excluded or loaded.
4. **Direct apply/push:** verify the D1 Edit token, inspect remote
   `d1_migrations`, and confirm that only manifest-listed migration SQL was
   staged. If D1 applied but push failed, retry the existing commit rather than
   generating a second migration.
5. **Pages rebuild:** confirm the Pages build has the separate D1 Read token and
   account ID, then inspect or retry the deployment after the main push.
