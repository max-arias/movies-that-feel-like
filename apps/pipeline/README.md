# Pipeline image backfill

This is the dedicated historical image process. It never downloads image
bytes, deletes rows, reinserts rows, or commits/pushes migrations.

1. Re-fetch the target Reddit post IDs and record an explicit outcome for every
   target (`attempted: true`, with `status: success`, `unavailable`,
   `rate_limited`, or similar).
2. Normalize that fresh response. Provider HTML entities are decoded exactly
   once; URL query strings are otherwise preserved. Each image has its source
   URL and the smallest provider preview with authoritative width >= 802, or a
   null preview.
3. Generate reviewed, row-safe updates:

```sh
npm run pipeline:backfill-images -- \
  --db data/app.db \
  --normalized data/working/normalized/normalized-<artifact>.json \
  --out data/working/image-backfill.sql \
  --outcomes data/working/refetch-outcomes.json
```

The generator only selects a refresh when each existing image URL has one
unique bijective association with a refreshed source/preview URL. Ambiguous,
incomplete, unavailable, deleted, rate-limited, or unattempted posts fall back
every existing row to its current source URL with `preview_url = NULL`.
Counts and per-row reasons are written to the adjacent JSON manifest.
