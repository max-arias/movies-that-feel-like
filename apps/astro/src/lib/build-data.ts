/** Build data bundled into the static site at build time. */

export type BuildRecommendation = {
  id: number;
  title: string;
  tmdbId: number | null;
  imdbId: string | null;
  igdbId: number | null;
  mediaType: string;
  releaseYear: number | null;
  posterUrl: string | null;
  backdropUrl: string | null;
  overview: string | null;
  externalUrl: string | null;
  platforms: string[] | null;
  popularity: number | null;
  voteAverage: number | null;
  evidenceScore: number;
  evidenceCommentId: string | null;
};
export type BuildPost = {
  id: number;
  redditPostId: string;
  title: string;
  cleanedTitle: string | null;
  selftext: string | null;
  author: string | null;
  createdUtc: number;
  permalink: string;
  url: string | null;
  subreddit: string;
  vibeSummary: string | null;
  status: string;
  errorInfo: string | null;
  processingRunId: number | null;
  createdAt: string;
  updatedAt: string;
  images: { id: number; importedVibePostId: number; sourceUrl: string; previewUrl: string | null; width: number | null; height: number | null; sortOrder: number; createdAt: string }[];
  tags: { id: number; importedVibePostId: number; tag: string; source: string; createdAt: string }[];
  recommendations: BuildRecommendation[];
};
export type BuildData = { posts: BuildPost[] };

const generatedSnapshots = import.meta.glob<{ default: BuildData }>("./build-data.snapshot.json", {
  eager: true,
});
const buildData = Object.values(generatedSnapshots)[0]?.default ?? { posts: [] };

/** Return the generated snapshot; this module has no runtime D1 dependency. */
export function getBuildData(): BuildData {
  return buildData;
}
