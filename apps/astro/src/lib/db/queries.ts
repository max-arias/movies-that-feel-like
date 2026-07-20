/**
 * Drizzle D1 query implementations.
 *
 * All 10 public functions from the original db.ts, reimplemented using
 * Drizzle ORM against the typed schema in packages/db/schema.ts.
 */

import {
  and,
  eq,
  desc,
  asc,
  inArray,
  count,
  sql,
  getTableColumns,
} from "drizzle-orm";
import type { DrizzleD1Database } from "drizzle-orm/d1";
import {
  importedVibePosts,
  importedPostImages,
  recommendations,
  recommendationEvidence,
  vibeTags,
} from "db/schema";

// ── Helpers ────────────────────────────────────────────────────────────

function chunk<T>(arr: T[], size: number): T[][] {
  const out: T[][] = [];
  for (let i = 0; i < arr.length; i += size) out.push(arr.slice(i, i + size));
  return out;
}

function groupBy<T, K>(items: T[], keyFn: (item: T) => K): Map<K, T[]> {
  const map = new Map<K, T[]>();
  for (const item of items) {
    const key = keyFn(item);
    const group = map.get(key);
    if (group) group.push(item);
    else map.set(key, [item]);
  }
  return map;
}

type RecWithPostId = {
  id: number;
  importedVibePostId: number;
  evidenceCommentId: string | null;
  [key: string]: unknown;
};

function deduplicateRecs<T extends RecWithPostId>(
  rows: T[]
): Omit<T, "importedVibePostId">[] {
  const seen = new Map<number, T>();
  for (const row of rows) {
    if (!seen.has(row.id)) seen.set(row.id, row);
  }
  return [...seen.values()].map(({ importedVibePostId: _, ...rec }) => rec);
}

// ── Public query functions ─────────────────────────────────────────────

/**
 * Q1: All publishable posts with images, tags, and recommendations attached.
 * Issues exactly 4 D1 subrequests (1 for posts + 3 for related data) regardless
 * of post count. Chunks IN-lists at 99 IDs to avoid D1's variable limit.
 */
export async function getPublishedPosts(db: DrizzleD1Database) {
  const posts = await db
    .select()
    .from(importedVibePosts)
    .where(eq(importedVibePosts.status, "publishable"))
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id));

  if (posts.length === 0) return [];

  const postIds = posts.map((p) => p.id);
  const postIdChunks = chunk(postIds, 99);

  const [allImages, allTags, allRecs] = await Promise.all([
    // Q2: All images for these post IDs
    Promise.all(
      postIdChunks.map((ids) =>
        db
          .select()
          .from(importedPostImages)
          .where(inArray(importedPostImages.importedVibePostId, ids))
          .orderBy(asc(importedPostImages.sortOrder), asc(importedPostImages.id))
      )
    ).then((r) => r.flat()),

    // Q3: All tags for these post IDs
    Promise.all(
      postIdChunks.map((ids) =>
        db
          .select()
          .from(vibeTags)
          .where(inArray(vibeTags.importedVibePostId, ids))
      )
    ).then((r) => r.flat()),

    // Q4: All recommendations for these post IDs (via evidence join)
    Promise.all(
      postIdChunks.map((ids) =>
        db
          .select({
            id: recommendations.id,
            title: recommendations.title,
            tmdbId: recommendations.tmdbId,
            imdbId: recommendations.imdbId,
            igdbId: recommendations.igdbId,
            mediaType: recommendations.mediaType,
            releaseYear: recommendations.releaseYear,
            posterUrl: recommendations.posterUrl,
            backdropUrl: recommendations.backdropUrl,
            overview: recommendations.overview,
            externalUrl: recommendations.externalUrl,
            platforms: recommendations.platforms,
            popularity: recommendations.popularity,
            voteAverage: recommendations.voteAverage,
            evidenceScore: recommendations.evidenceScore,
            importedVibePostId:
              recommendationEvidence.importedVibePostId,
            evidenceCommentId:
              recommendationEvidence.evidenceCommentId,
          })
          .from(recommendations)
          .innerJoin(
            recommendationEvidence,
            eq(
              recommendationEvidence.recommendationId,
              recommendations.id
            )
          )
          .where(
            inArray(
              recommendationEvidence.importedVibePostId,
              ids
            )
          )
          .orderBy(
            desc(recommendations.evidenceScore),
            desc(recommendations.popularity),
            asc(recommendations.id)
          )
      )
    ).then((r) => r.flat()),
  ]);

  // JS-side grouping (no additional subrequests)
  const imagesByPost = groupBy(
    allImages,
    (i) => i.importedVibePostId
  );
  const tagsByPost = groupBy(allTags, (t) => t.importedVibePostId);
  const recsByPost = groupBy(
    allRecs,
    (r) => r.importedVibePostId
  );

  return posts.map((post) => ({
    ...post,
    images: imagesByPost.get(post.id) ?? [],
    tags: tagsByPost.get(post.id) ?? [],
    recommendations: deduplicateRecs(
      recsByPost.get(post.id) ?? []
    ),
  }));
}

/**
 * Q1–Q4: Single post by reddit ID with full related data. Returns null if not found.
 * 4 subrequests.
 */
export async function getPostByRedditId(
  db: DrizzleD1Database,
  redditId: string
) {
  const [post] = await db
    .select()
    .from(importedVibePosts)
    .where(
      and(
        eq(importedVibePosts.redditPostId, redditId),
        eq(importedVibePosts.status, "publishable")
      )
    )
    .limit(1);

  if (!post) return null;

  const [images, tags, recRows] = await Promise.all([
    db
      .select()
      .from(importedPostImages)
      .where(
        eq(importedPostImages.importedVibePostId, post.id)
      )
      .orderBy(asc(importedPostImages.sortOrder), asc(importedPostImages.id)),
    db
      .select()
      .from(vibeTags)
      .where(eq(vibeTags.importedVibePostId, post.id)),
    db
      .select({
        ...getTableColumns(recommendations),
        evidenceCommentId: sql<string | null>`MAX(${recommendationEvidence.evidenceCommentId})`.as(
          "evidence_comment_id"
        ),
        mentionCount: sql<number>`COUNT(${recommendationEvidence.id})`.as(
          "mention_count"
        ),
      })
      .from(recommendations)
      .innerJoin(
        recommendationEvidence,
        eq(
          recommendationEvidence.recommendationId,
          recommendations.id
        )
      )
      .where(
        eq(
          recommendationEvidence.importedVibePostId,
          post.id
        )
      )
      .groupBy(recommendations.id)
      .orderBy(
        desc(sql`COUNT(${recommendationEvidence.id})`),
        desc(recommendations.evidenceScore),
        desc(recommendations.popularity),
        asc(recommendations.id)
      ),
  ]);

  return { ...post, images, tags, recommendations: recRows };
}

/**
 * All recommendations for a given post ID, including evidence_comment_id.
 * 1 subrequest. Uses GROUP BY on recommendations.id to collapse multiple
 * evidence rows per recommendation-post pair.
 */
export async function getRecommendationsForPost(
  db: DrizzleD1Database,
  postId: number
) {
  return db
    .select({
      ...getTableColumns(recommendations),
      evidenceCommentId: recommendationEvidence.evidenceCommentId,
    })
    .from(recommendations)
    .innerJoin(
      recommendationEvidence,
      eq(recommendationEvidence.recommendationId, recommendations.id)
    )
    .where(
      eq(recommendationEvidence.importedVibePostId, postId)
    )
    .groupBy(recommendations.id)
    .orderBy(
      desc(recommendations.evidenceScore),
      desc(recommendations.popularity),
      asc(recommendations.id)
    );
}

/**
 * All images for a given post ID, ordered by sort_order.
 * 1 subrequest.
 */
export async function getImagesForPost(
  db: DrizzleD1Database,
  postId: number
) {
  return db
    .select()
    .from(importedPostImages)
    .where(eq(importedPostImages.importedVibePostId, postId))
    .orderBy(asc(importedPostImages.sortOrder), asc(importedPostImages.id));
}

/**
 * All tags for a given post ID.
 * 1 subrequest.
 */
export async function getTagsForPost(
  db: DrizzleD1Database,
  postId: number
) {
  return db
    .select()
    .from(vibeTags)
    .where(eq(vibeTags.importedVibePostId, postId));
}

/**
 * Single recommendation by ID. Returns null if not found.
 * 1 subrequest.
 */
export async function getRecommendationById(
  db: DrizzleD1Database,
  id: number
) {
  const [row] = await db
    .select()
    .from(recommendations)
    .where(eq(recommendations.id, id))
    .limit(1);
  return row ?? null;
}

/**
 * All publishable posts that recommended a given recommendation/media ID.
 * Includes evidence_comment_id and extracted_text from the join.
 * 1 subrequest.
 */
export async function getPostsForRecommendation(
  db: DrizzleD1Database,
  recId: number
) {
  return db
    .select({
      ...getTableColumns(importedVibePosts),
      evidenceCommentId: recommendationEvidence.evidenceCommentId,
      extractedText: recommendationEvidence.extractedText,
    })
    .from(importedVibePosts)
    .innerJoin(
      recommendationEvidence,
      eq(
        recommendationEvidence.importedVibePostId,
        importedVibePosts.id
      )
    )
    .where(
      and(
        eq(recommendationEvidence.recommendationId, recId),
        eq(importedVibePosts.status, "publishable")
      )
    )
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id));
}

/**
 * All distinct recommendation IDs that are referenced by at least one
 * publishable post. Used for prerendering recommendation detail pages.
 * 1 subrequest.
 */
export async function getAllRecommendationIds(
  db: DrizzleD1Database
) {
  return db
    .selectDistinct({ id: recommendations.id })
    .from(recommendations)
    .innerJoin(
      recommendationEvidence,
      eq(recommendationEvidence.recommendationId, recommendations.id)
    )
    .innerJoin(
      importedVibePosts,
      eq(importedVibePosts.id, recommendationEvidence.importedVibePostId)
    )
    .where(eq(importedVibePosts.status, "publishable"))
    .orderBy(asc(recommendations.id));
}

/**
 * All publishable post reddit IDs, ordered by creation date descending.
 * Used for prerendering post detail pages.
 * 1 subrequest.
 */
export async function getAllPostIds(db: DrizzleD1Database) {
  return db
    .select({ redditPostId: importedVibePosts.redditPostId })
    .from(importedVibePosts)
    .where(eq(importedVibePosts.status, "publishable"))
    .orderBy(desc(importedVibePosts.createdUtc), desc(importedVibePosts.id));
}

/**
 * Count of publishable posts.
 * 1 subrequest.
 */
export async function getPostCount(
  db: DrizzleD1Database
): Promise<number> {
  const [row] = await db
    .select({ cnt: count() })
    .from(importedVibePosts)
    .where(eq(importedVibePosts.status, "publishable"));
  return row?.cnt ?? 0;
}
