/**
 * Per-site copy and links. One Astro app builds either site; the `SITE` env
 * var picks which at build time (`movies` by default, or `games`).
 * `astro.config.mjs` reads it and inlines it as `import.meta.env.SITE_ID`
 * (Astro already owns `import.meta.env.SITE` for the canonical site URL), so
 * the Worker bundle carries one site's copy and never reads the env at runtime.
 */

export type SiteId = "movies" | "games";

export type FooterLink = { text: string; href: string };

export type SiteConfig = {
  id: SiteId;
  /** Display name, also the default `<title>`. */
  name: string;
  /** The two-line wordmark beside the logo square, one entry per line. */
  logoLines: [string, string];
  /** The short mark inside the logo square. */
  logoMark: string;
  /** Default meta description. */
  description: string;
  /** Appended to page titles: "<page> — <titleSuffix>". */
  titleSuffix: string;
  /** Title of the unfiltered feed's first page. */
  feedTitle: string;
  /** Description of the unfiltered feed. */
  feedDescription: string;
  /** Description of a tag feed. */
  tagDescription: (tag: string) => string;
  subreddit: { name: string; href: string };
  emptyState: { heading: string; lines: string[] };
  footerLinks: FooterLink[];
  /** Data-source credit shown in the footer; null shows none. */
  attribution: FooterLink | null;
};

const movies: SiteConfig = {
  id: "movies",
  name: "Movies That Feel Like",
  logoLines: ["Movies", "That Feel Like"],
  logoMark: "MTFL",
  description: "A visual index of movies that feel like something.",
  titleSuffix: "Movies That Feel Like",
  feedTitle: "Movies That Feel Like — a visual discovery index",
  feedDescription: "Discover movies that match the feeling of the stories, places, and moments you love.",
  tagDescription: (tag) => `Movies that feel like ${tag}, from the imagery and discussion of r/MoviesThatFeelLike.`,
  subreddit: { name: "/r/MoviesThatFeelLike/", href: "https://www.reddit.com/r/MoviesThatFeelLike/" },
  emptyState: {
    heading: "No posts loaded yet",
    lines: ["No publishable posts found in the database.", "Run the pipeline load stage and <code>npm run seed</code>."],
  },
  footerLinks: [{ text: "maxarias.com", href: "https://maxarias.com" }],
  attribution: null,
};

const games: SiteConfig = {
  id: "games",
  name: "Games That Feel Like",
  logoLines: ["Games", "That Feel Like"],
  logoMark: "GTFL",
  description: "A visual index of games that feel like something.",
  titleSuffix: "Games That Feel Like",
  feedTitle: "Games That Feel Like — a visual discovery index",
  feedDescription: "Discover games that match the feeling of the worlds, places, and moments you love.",
  tagDescription: (tag) => `Games that feel like ${tag}, from the imagery and discussion of r/GamesThatFeelLike.`,
  subreddit: { name: "/r/GamesThatFeelLike/", href: "https://www.reddit.com/r/GamesThatFeelLike/" },
  emptyState: {
    heading: "No posts loaded yet",
    lines: ["No publishable posts found in the database.", "Run the games pipeline load stage and apply the games migrations."],
  },
  footerLinks: [{ text: "maxarias.com", href: "https://maxarias.com" }],
  attribution: { text: "Game data from IGDB.com", href: "https://www.igdb.com/" },
};

const SITES: Record<SiteId, SiteConfig> = { movies, games };

export function resolveSiteId(value: string | undefined): SiteId {
  if (value === undefined || value === "" || value === "movies") return "movies";
  if (value === "games") return "games";
  throw new Error(`Unknown SITE "${value}": expected "movies" or "games".`);
}

export const site: SiteConfig = SITES[resolveSiteId(import.meta.env.SITE_ID)];

/** "<page> — <site>", the shape every page title takes. */
export const pageTitle = (page: string) => `${page} — ${site.titleSuffix}`;
