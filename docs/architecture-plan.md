# Architecture Plan

## Product Shape

The first version is a presentational discovery site built from imported Reddit data from `r/MoviesThatFeelLike`. Users browse cleaned-up Imported Vibe Posts rather than creating their own requests.

Each Imported Vibe Post is shown as a curated vibe page/card: images first, cleaned title/text, a generated Vibe Summary, top canonical Recommendations, and a secondary link back to the original Reddit thread. Reddit comments are used during processing but are not shown directly in the public UI.

## Initial Scope

- Import 2026 data from `r/MoviesThatFeelLike` first.
- Include posts, comment trees, image URLs, and Reddit provenance.
- Cache raw Reddit payloads and images so the pipeline can retry without refetching.
- If image caching fails, keep the original hotlink as a fallback.
- Publish only completed records.

## Public Browsing Paths

1. **Browse Imported Vibe Posts** — image-first feed/grid of processed Reddit-derived posts.
2. **Open an Imported Vibe Post** — images, cleaned text, vibe summary/tags, top Recommendations, source link.
3. **Open a Recommendation** — canonical movie/series details, TMDB metadata, and all Imported Vibe Posts where people recommended it.

## Monorepo Shape

```txt
/
  package.json          # npm workspace + root scripts
  apps/
    astro/              # Astro + Cloudflare Pages site
    pipeline/           # Python import/extract/enrich/load pipeline
  packages/
    db/                 # D1 schema, migrations, seed/dev helpers
  data/                 # ignored local cache/samples
  docs/
    adr/
  CONTEXT.md
```

The repo uses npm workspaces for organization. The Python pipeline lives under `apps/pipeline` with its own `pyproject.toml` and is invoked from root npm scripts.

## Cloudflare Runtime Architecture

- **Astro on Cloudflare Pages** serves the public website.
- **D1** stores processed app data and is the source of truth for the public site.
- **R2** stores raw Reddit JSON, intermediate pipeline artifacts, and cached image assets.
- **D1 records** store R2 object keys plus original source URLs for fallback/provenance.
- **Workers AI / AI Gateway** may be added later, but the first processing pipeline runs locally.

## Local-First Pipeline

The pipeline starts as a local Python CLI that can write to local development storage first, then remote Cloudflare D1/R2 later.

Local mode should support:

- local raw/intermediate cache under ignored `data/`
- local filesystem substitute for R2
- local D1-compatible development database via Wrangler/Miniflare where practical

Remote mode should support:

- writing raw/intermediate artifacts to R2
- writing processed records to D1
- using the same staged pipeline shape as local mode

## Pipeline Stages

1. **fetch**
   - Pull Reddit data using Arctic Shift / `arcshiftwrap`.
   - Store raw JSON artifacts.

2. **cache-assets**
   - Download image assets best-effort.
   - Store cached asset keys and fallback source URLs.

3. **extract**
   - Use Instructor + Pydantic with Gemini as the first LLM provider.
   - Perform one text-only extraction pass per Imported Vibe Post.
   - Extract candidate movie/series recommendations with evidence comment IDs, Vibe Summary, and tags.
   - Do not perform image analysis.

4. **enrich**
   - Resolve candidate recommendations against TMDB.
   - Create canonical Recommendation records for matched movies/series.
   - Keep unresolved or ambiguous candidates for inspection, not publication.

5. **load**
   - Write processed app records into D1.
   - Mark records publishable only when all requirements are met.

6. **inspect**
   - Generate CLI/static inspection output for sample batches.
   - Show images, source links, summaries/tags, extracted candidates, TMDB matches, unresolved candidates, and errors.

## Publishability Rules

An Imported Vibe Post is publishable only if it has:

- at least one usable image, either cached or fallback hotlink
- a cleaned title
- a generated Vibe Summary
- at least one canonical TMDB-matched Recommendation
- a Reddit source permalink
- no processing error flags requiring review

The public website filters to completed/published records. Partial imports remain available only through artifacts or inspection reports.

## First Quality Gate

Before building the full UI, process and inspect a sample of roughly 25–50 Imported Vibe Posts. The goal is to validate extraction quality, TMDB matching, image caching, publishability rules, and Shared Recommendation Links using real data.
