import { execFile } from "node:child_process";
import { mkdir, rename, writeFile } from "node:fs/promises";
import { dirname, resolve } from "node:path";
import { promisify } from "node:util";

const execFileAsync = promisify(execFile);
const databaseName = process.env.D1_DATABASE_NAME || "movies-that-feel-like";
const outputPath = resolve(new URL("../src/lib/build-data.snapshot.json", import.meta.url).pathname);
const wranglerConfig = resolve(new URL("../wrangler.jsonc", import.meta.url).pathname);

const queries = {
  posts: `SELECT id, reddit_post_id, title, cleaned_title, selftext, author, created_utc, permalink, url, subreddit, vibe_summary, status, error_info, processing_run_id, created_at, updated_at FROM imported_vibe_posts WHERE status = 'publishable' ORDER BY created_utc DESC, id DESC`,
  images: `SELECT i.id, i.imported_vibe_post_id, i.source_url, i.preview_url, i.width, i.height, i.sort_order, i.created_at FROM imported_post_images i INNER JOIN imported_vibe_posts p ON p.id = i.imported_vibe_post_id WHERE p.status = 'publishable' ORDER BY i.imported_vibe_post_id ASC, i.sort_order ASC, i.id ASC`,
  tags: `SELECT t.id, t.imported_vibe_post_id, t.tag, t.source, t.created_at FROM vibe_tags t INNER JOIN imported_vibe_posts p ON p.id = t.imported_vibe_post_id WHERE p.status = 'publishable' ORDER BY t.imported_vibe_post_id ASC, t.id ASC`,
  recommendations: `SELECT r.id, r.title, r.tmdb_id, r.imdb_id, r.igdb_id, r.media_type, r.release_year, r.poster_url, r.backdrop_url, r.overview, r.external_url, r.platforms, r.popularity, r.vote_average, r.evidence_score, e.imported_vibe_post_id, e.evidence_comment_id FROM recommendations r INNER JOIN recommendation_evidence e ON e.recommendation_id = r.id INNER JOIN imported_vibe_posts p ON p.id = e.imported_vibe_post_id WHERE p.status = 'publishable' ORDER BY e.imported_vibe_post_id ASC, r.evidence_score DESC, r.popularity DESC, r.id ASC`,
};

function assertObject(value, label) {
  if (!value || typeof value !== "object" || Array.isArray(value)) throw new Error(`Invalid Wrangler response for ${label}: expected an object`);
  return value;
}

function rowsFromResponse(stdout, label) {
  let parsed;
  try {
    parsed = JSON.parse(stdout);
  } catch (error) {
    throw new Error(`Invalid Wrangler JSON response for ${label}: ${error.message}`);
  }
  const envelopes = Array.isArray(parsed) ? parsed : [parsed];
  const rows = [];
  for (const envelopeValue of envelopes) {
    const envelope = assertObject(envelopeValue, label);
    if (envelope.success === false) throw new Error(`Wrangler reported failure for ${label}: ${envelope.error ?? "unknown error"}`);
    const result = envelope.result ?? envelope;
    const resultObject = assertObject(result, label);
    if (!Array.isArray(resultObject.results)) throw new Error(`Invalid Wrangler response for ${label}: missing results array`);
    rows.push(...resultObject.results);
  }
  for (const row of rows) assertObject(row, label);
  return rows;
}

async function execute(name, sql) {
  try {
    const { stdout } = await execFileAsync("npm", [
      "exec", "--offline", "--", "wrangler", "d1", "execute", databaseName,
      "--remote", "--config", wranglerConfig, "--command", sql, "--json",
    ], { cwd: resolve(new URL("../../..", import.meta.url).pathname), maxBuffer: 20 * 1024 * 1024 });
    return rowsFromResponse(stdout, name);
  } catch (error) {
    const detail = error.stdout || error.stderr || error.message;
    throw new Error(
      `Remote D1 snapshot query '${name}' failed: ${detail}\n` +
        "Local Wrangler OAuth is supported. For Cloudflare Pages, configure " +
        "CLOUDFLARE_ACCOUNT_ID and CLOUDFLARE_API_TOKEN (Account → D1 → Read)."
    );
  }
}

const [postRows, imageRows, tagRows, recommendationRows] = await Promise.all(
  Object.entries(queries).map(([name, sql]) => execute(name, sql))
);

const required = (row, fields, label) => {
  for (const field of fields) if (!(field in row)) throw new Error(`Invalid ${label} row: missing ${field}`);
};
postRows.forEach((row) => required(row, ["id", "reddit_post_id", "title", "created_utc", "permalink", "subreddit", "status", "created_at", "updated_at"], "post"));
imageRows.forEach((row) => required(row, ["id", "imported_vibe_post_id", "source_url", "sort_order", "created_at"], "image"));
tagRows.forEach((row) => required(row, ["id", "imported_vibe_post_id", "tag", "source", "created_at"], "tag"));
recommendationRows.forEach((row) => required(row, ["id", "title", "media_type", "evidence_score", "imported_vibe_post_id"], "recommendation"));

function parsePlatforms(value, id) {
  if (value == null || Array.isArray(value)) return value;
  if (typeof value !== "string") throw new Error(`Invalid platforms JSON for recommendation ${id}`);
  try {
    const parsed = JSON.parse(value);
    if (parsed !== null && !Array.isArray(parsed)) throw new Error("expected an array or null");
    return parsed;
  } catch (error) {
    throw new Error(`Invalid platforms JSON for recommendation ${id}: ${error.message}`);
  }
}

const byPost = (rows) => Map.groupBy(rows, (row) => row.imported_vibe_post_id);
const images = byPost(imageRows);
const tags = byPost(tagRows);
const recommendations = byPost(recommendationRows);

const posts = postRows.map((post) => {
  const recs = [];
  const seen = new Set();
  for (const row of recommendations.get(post.id) ?? []) {
    if (seen.has(row.id)) continue;
    seen.add(row.id);
    recs.push({ id: row.id, title: row.title, tmdbId: row.tmdb_id, imdbId: row.imdb_id, igdbId: row.igdb_id, mediaType: row.media_type, releaseYear: row.release_year, posterUrl: row.poster_url, backdropUrl: row.backdrop_url, overview: row.overview, externalUrl: row.external_url, platforms: parsePlatforms(row.platforms, row.id), popularity: row.popularity, voteAverage: row.vote_average, evidenceScore: row.evidence_score, evidenceCommentId: row.evidence_comment_id });
  }
  return {
    id: post.id, redditPostId: post.reddit_post_id, title: post.title, cleanedTitle: post.cleaned_title,
    selftext: post.selftext, author: post.author, createdUtc: post.created_utc, permalink: post.permalink,
    url: post.url, subreddit: post.subreddit, vibeSummary: post.vibe_summary, status: post.status,
    errorInfo: post.error_info, processingRunId: post.processing_run_id, createdAt: post.created_at, updatedAt: post.updated_at,
    images: (images.get(post.id) ?? []).map((row) => ({ id: row.id, importedVibePostId: row.imported_vibe_post_id, sourceUrl: row.source_url, previewUrl: row.preview_url, width: row.width, height: row.height, sortOrder: row.sort_order, createdAt: row.created_at })),
    tags: (tags.get(post.id) ?? []).map((row) => ({ id: row.id, importedVibePostId: row.imported_vibe_post_id, tag: row.tag, source: row.source, createdAt: row.created_at })),
    recommendations: recs,
  };
});

const snapshot = JSON.stringify({ posts }, null, 2) + "\n";
const temporaryPath = `${outputPath}.${process.pid}.tmp`;
await mkdir(dirname(outputPath), { recursive: true });
await writeFile(temporaryPath, snapshot, "utf8");
await rename(temporaryPath, outputPath);
console.log(`Wrote ${posts.length} publishable posts to ${outputPath}`);
