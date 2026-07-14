/**
 * D1 database query helpers for Cloudflare Pages.
 *
 * All functions accept a D1Database binding and return plain objects.
 * No Node.js-specific imports — designed for the CF Workers runtime.
 */

// ── Types ──────────────────────────────────────────────────────────────

export interface ImportedVibePost {
  id: number;
  reddit_post_id: string;
  title: string;
  cleaned_title: string | null;
  selftext: string | null;
  author: string | null;
  created_utc: number;
  permalink: string;
  url: string | null;
  subreddit: string;
  vibe_summary: string | null;
  status: string;
  error_info: string | null;
}

export interface ImportedPostImage {
  id: number;
  imported_vibe_post_id: number;
  url: string;
  cache_key: string | null;
  cache_status: string;
  remote_url: string | null;
  sort_order: number;
}

export interface Recommendation {
  id: number;
  tmdb_id: number | null;
  imdb_id: string | null;
  igdb_id: number | null;
  title: string;
  original_title: string | null;
  media_type: string;
  release_year: number | null;
  poster_url: string | null;
  backdrop_url: string | null;
  overview: string | null;
  external_url: string | null;
  platforms: string | null;  // JSON-encoded list, e.g. '["PC","PlayStation 5"]'
  popularity: number | null;
  vote_average: number | null;
  evidence_score: number | null;
}

export interface VibeTag {
  id: number;
  imported_vibe_post_id: number;
  tag: string;
  source: string;
}

// ── Query functions ────────────────────────────────────────────────────

async function all<T>(
  db: D1Database,
  sql: string,
  ...params: unknown[]
): Promise<T[]> {
  const stmt = db.prepare(sql);
  if (params.length > 0) {
    return (await stmt.bind(...params).all()).results as T[];
  }
  return (await stmt.all()).results as T[];
}

async function one<T>(
  db: D1Database,
  sql: string,
  ...params: unknown[]
): Promise<T | null> {
  const stmt = db.prepare(sql);
  if (params.length > 0) {
    return ((await stmt.bind(...params).first()) as T | null) ?? null;
  }
  return ((await stmt.first()) as T | null) ?? null;
}

// ── Public API ─────────────────────────────────────────────────────────

export async function getPublishedPosts(db: D1Database) {
  const posts = await all<ImportedVibePost>(
    db,
    `SELECT * FROM imported_vibe_posts WHERE status = 'publishable' ORDER BY created_utc DESC`
  );

  return Promise.all(
    posts.map(async (post) => {
      const [images, tags, recommendations] = await Promise.all([
        all<ImportedPostImage>(
          db,
          `SELECT * FROM imported_post_images WHERE imported_vibe_post_id = ? ORDER BY sort_order`,
          post.id
        ),
        all<VibeTag>(
          db,
          `SELECT * FROM vibe_tags WHERE imported_vibe_post_id = ?`,
          post.id
        ),
        all<Recommendation & { evidence_comment_id: string | null }>(
          db,
          `SELECT r.*, re.evidence_comment_id
           FROM recommendations r
           JOIN recommendation_evidence re ON re.recommendation_id = r.id
           WHERE re.imported_vibe_post_id = ?
           GROUP BY r.id
            ORDER BY r.evidence_score DESC, r.popularity DESC`,
            post.id
          ),
        ]);
      return { ...post, images, tags, recommendations };
    })
  );
}

export async function getPostByRedditId(
  db: D1Database,
  redditId: string
) {
  const post = await one<ImportedVibePost>(
    db,
    `SELECT * FROM imported_vibe_posts WHERE reddit_post_id = ? AND status = 'publishable'`,
    redditId
  );
  if (!post) return null;

  const [images, tags, recommendations] = await Promise.all([
    all<ImportedPostImage>(
      db,
      `SELECT * FROM imported_post_images WHERE imported_vibe_post_id = ? ORDER BY sort_order`,
      post.id
    ),
    all<VibeTag>(
      db,
      `SELECT * FROM vibe_tags WHERE imported_vibe_post_id = ?`,
      post.id
    ),
    all<Recommendation & { evidence_comment_id: string | null }>(
      db,
      `SELECT r.*, re.evidence_comment_id
       FROM recommendations r
       JOIN recommendation_evidence re ON re.recommendation_id = r.id
       WHERE re.imported_vibe_post_id = ?
       GROUP BY r.id
       ORDER BY r.evidence_score DESC, r.popularity DESC`,
      post.id
    ),
  ]);
  return { ...post, images, tags, recommendations };
}

export async function getRecommendationsForPost(
  db: D1Database,
  postId: number
) {
  return all<Recommendation & { evidence_comment_id: string | null }>(
    db,
    `SELECT r.*, re.evidence_comment_id
     FROM recommendations r
     JOIN recommendation_evidence re ON re.recommendation_id = r.id
     WHERE re.imported_vibe_post_id = ?
     GROUP BY r.id
     ORDER BY r.evidence_score DESC, r.popularity DESC`,
    postId
  );
}

export async function getImagesForPost(
  db: D1Database,
  postId: number
): Promise<ImportedPostImage[]> {
  return all<ImportedPostImage>(
    db,
    `SELECT * FROM imported_post_images WHERE imported_vibe_post_id = ? ORDER BY sort_order`,
    postId
  );
}

export async function getTagsForPost(
  db: D1Database,
  postId: number
): Promise<VibeTag[]> {
  return all<VibeTag>(
    db,
    `SELECT * FROM vibe_tags WHERE imported_vibe_post_id = ?`,
    postId
  );
}

export async function getRecommendationById(
  db: D1Database,
  id: number
): Promise<Recommendation | null> {
  return one<Recommendation>(
    db,
    `SELECT * FROM recommendations WHERE id = ?`,
    id
  );
}

export async function getPostsForRecommendation(
  db: D1Database,
  recId: number
) {
  return all<
    ImportedVibePost & {
      evidence_comment_id: string | null;
      extracted_text: string | null;
    }
  >(
    db,
    `SELECT p.*, re.evidence_comment_id, re.extracted_text
     FROM imported_vibe_posts p
     JOIN recommendation_evidence re ON re.imported_vibe_post_id = p.id
     WHERE re.recommendation_id = ?
       AND p.status = 'publishable'
     ORDER BY p.created_utc DESC`,
    recId
  );
}

export async function getAllRecommendationIds(
  db: D1Database
): Promise<{ id: number }[]> {
  return all<{ id: number }>(
    db,
    `SELECT DISTINCT r.id FROM recommendations r
     JOIN recommendation_evidence re ON re.recommendation_id = r.id
     JOIN imported_vibe_posts p ON p.id = re.imported_vibe_post_id
     WHERE p.status = 'publishable'
     ORDER BY r.id`
  );
}

export async function getAllPostIds(
  db: D1Database
): Promise<{ reddit_post_id: string }[]> {
  return all<{ reddit_post_id: string }>(
    db,
    `SELECT reddit_post_id FROM imported_vibe_posts WHERE status = 'publishable' ORDER BY created_utc DESC`
  );
}

export async function getPostCount(
  db: D1Database
): Promise<number> {
  const row = await one<{ cnt: number }>(
    db,
    `SELECT COUNT(*) as cnt FROM imported_vibe_posts WHERE status = 'publishable'`
  );
  return row?.cnt ?? 0;
}
