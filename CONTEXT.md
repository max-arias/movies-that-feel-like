# Context

## Glossary

### Imported Vibe Post
A read-only post imported from Reddit that contains one or more images, optional post text, and the recommendation discussion attached to it. In the initial product, users browse these imported posts rather than creating new vibe requests.

An Imported Vibe Post is identified by its Reddit post ID. Once that ID exists locally, later imports do not reprocess it, regardless of its current publication status.

### Incremental Import
A scheduled import that discovers recent source posts, filters out every existing Imported Vibe Post by Reddit post ID before downstream processing, and processes only new posts.

### Recommendation
A canonical movie or series suggested in the discussion attached to an Imported Vibe Post. Different comment spellings or aliases should resolve to the same Recommendation when they refer to the same title.

### Media Enrichment Source
An external catalog used during import processing to resolve and enrich Recommendations with canonical IDs, titles, media type, release years, images, and metadata. TMDB is the initial Media Enrichment Source.

### Shared Recommendation Link
A connection between multiple Imported Vibe Posts that mention the same Recommendation, allowing users to move between different image sets that led people to suggest the same movie or series.

### Vibe Summary
A short, atmospheric sentence fragment expressing the feeling of an Imported Vibe Post, derived during import processing from the post title, text, and recommendation discussion. It describes the mood directly rather than the post, its author, or its commenters. Vibe Summaries do not require image analysis in the initial product.
