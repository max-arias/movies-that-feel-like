# Wayfinder #52 — styling and UI maintainability audit

## Scope and method

This is a repository-state audit of the Astro app's styling model, reusable UI
surface, accessibility, responsive behavior, asset handling, token ownership,
and fragile interaction patterns. The review read `CONTEXT.md`, the three ADRs,
the Astro source and package metadata, and the existing project documentation.
Line citations refer to the current working tree. This report recommends
roadmap work only; it does **not** change the current visual identity or claim
that source changes were made.

## Product and visual constraints to preserve

The product is intentionally a presentational, read-only discovery site for
imported Reddit posts ([`CONTEXT.md:5-7`](../../CONTEXT.md#L5-L7);
[`README.md:7-7`](../../README.md#L7)). The current visual language is already
clear and distinctive: an editorial serif body face, condensed display face,
paper/ink monochrome, red accent, image-led galleries, oversized feeling tags,
and an optional dark theme ([`apps/astro/src/styles/app.css:4-18`](../../apps/astro/src/styles/app.css#L4-L18);
[`apps/astro/src/styles/app.css:24-40`](../../apps/astro/src/styles/app.css#L24-L40)).
The target system should make this language safer and easier to extend, not
replace it with generic cards, a new palette, or a conventional SaaS layout.

The deployment decision is Cloudflare-native and the public app owns cached
images as part of that architecture ([`docs/adr/0001-cloudflare-native-storage-and-deployment.md:1-3`](../adr/0001-cloudflare-native-storage-and-deployment.md#L1-L3)).
The current Astro config is static output, however, so visual QA must inspect
the generated routes/assets as well as source templates
([`apps/astro/astro.config.mjs:5-13`](../../apps/astro/astro.config.mjs#L5-L13)).

## Current styling model

- Tailwind CSS 4 is imported in one global stylesheet and daisyUI is enabled as
  a plugin ([`apps/astro/src/styles/app.css:1-2`](../../apps/astro/src/styles/app.css#L1-L2);
  [`apps/astro/package.json:19-24`](../../apps/astro/package.json#L19-L24)).
- Most visual decisions are expressed as named Tailwind theme tokens: colors,
  fonts, spacing, aspect ratios, text sizes, tracking, and easing
  ([`apps/astro/src/styles/app.css:24-118`](../../apps/astro/src/styles/app.css#L24-L118)).
  Two custom utilities cover scrollbar removal and the desktop index grid
  ([`apps/astro/src/styles/app.css:120-130`](../../apps/astro/src/styles/app.css#L120-L130)).
- The theme is selected by a checked, visually hidden checkbox through a custom
  `:has()` variant ([`apps/astro/src/styles/app.css:120-120`](../../apps/astro/src/styles/app.css#L120);
  [`apps/astro/src/layouts/Layout.astro:25-30`](../../apps/astro/src/layouts/Layout.astro#L25-L30)).
- `Layout.astro` is the only shared UI abstraction. It owns document metadata,
  font preload, header, theme control, main width, and global color classes
  ([`apps/astro/src/layouts/Layout.astro:1-35`](../../apps/astro/src/layouts/Layout.astro#L1-L35)).
  The feed and detail page contain their own galleries, filters, recommendation
  cards, empty states, and lightbox markup; there is no reusable component
  directory in the Astro source tree.
- Classes are very long and often repeat the same focus, motion-reduction,
  theme, and transition rules. Examples are the feed image/link/control group
  ([`apps/astro/src/pages/index.astro:74-85`](../../apps/astro/src/pages/index.astro#L74-L85))
  and detail carousel actions ([`apps/astro/src/pages/posts/[id].astro:118-135`](../../apps/astro/src/pages/posts/[id].astro#L118-L135)).
  This is workable for a small surface but makes visual changes and audits
  error-prone.

## Findings and prioritized recommendations

### High priority

1. **Create a small semantic UI foundation without changing the look.**
   Establish documented primitives for `PageShell`, `LinkButton`, `IconButton`,
   `TagLink`, `MediaFrame`, `Gallery`, `RecommendationCard`, and `EmptyState`.
   Keep the existing Tailwind tokens and daisyUI only where its behavior is
   explicitly wanted; expose variants for `paper`, `ink`, `red`, quiet text,
   focus, dark theme, and reduced motion. Move repeated interaction states into
   those primitives rather than copying class strings. This directly addresses
   the current single-layout/duplicated-page model evidenced by
   [`apps/astro/src/layouts/Layout.astro:1-35`](../../apps/astro/src/layouts/Layout.astro#L1-L35),
   [`apps/astro/src/pages/index.astro:50-65`](../../apps/astro/src/pages/index.astro#L50-L65),
   and [`apps/astro/src/pages/posts/[id].astro:189-300`](../../apps/astro/src/pages/posts/[id].astro#L189-L300).

2. **Make filter state truthful and operable.** The server always sets
   `selectedTag` to `"all"` and renders all posts
   ([`apps/astro/src/pages/index.astro:17-18`](../../apps/astro/src/pages/index.astro#L17-L18));
   the browser later reads the query string and hides posts
   ([`apps/astro/src/pages/index.astro:109-115`](../../apps/astro/src/pages/index.astro#L109-L115)).
   Consequently, a filtered URL can show filtered content while `aria-current`
   and the selected red tag still describe “All”. Resolve the query on the
   server, render the filtered result and current state in the HTML, and retain
   client behavior only as an enhancement. Add a result count/status and a
   no-results state.

3. **Replace the checkbox/label drawer with a real disclosure or dialog
   contract.** The mobile filter uses a hidden checkbox and non-focusable
   labels as open/close controls ([`apps/astro/src/pages/index.astro:50-64`](../../apps/astro/src/pages/index.astro#L50-L64)).
   It has no explicit expanded state, focus return, Escape handling, focus
   containment, or reliably keyboard-focusable close button. Use a native
   button plus either a responsive `<aside>` disclosure or a modal dialog
   pattern; preserve the current panel, overlap, and typography. Verify that
   keyboard users can open, move through tags, close with Escape, and return to
   the trigger.

4. **Define an accessible gallery contract and test it across feed, hero, and
   lightbox.** The three implementations use different mechanisms: a nested
   horizontal scroll track in the feed ([`apps/astro/src/pages/index.astro:74-83`](../../apps/astro/src/pages/index.astro#L74-L83)),
   hash-linked hero controls ([`apps/astro/src/pages/posts/[id].astro:92-151`](../../apps/astro/src/pages/posts/[id].astro#L92-L151)),
   and a scripted `<dialog>` lightbox ([`apps/astro/src/pages/posts/[id].astro:304-357`](../../apps/astro/src/pages/posts/[id].astro#L304-L357);
   [`apps/astro/src/pages/posts/[id].astro:395-425`](../../apps/astro/src/pages/posts/[id].astro#L395-L425)).
   A shared contract should define the active slide, slide count, next/previous
   labels, live announcement, keyboard arrows, focus return, Escape close,
   scroll position, reduced-motion behavior, and behavior when JavaScript is
   unavailable. Keep the existing image-first presentation, but make each
   implementation testable instead of relying on three subtly different DOM
   conventions.

### Medium priority

5. **Turn the token list into a documented, bounded design system.** The theme
   is a good foundation, but it mixes semantic tokens (`paper`, `ink`, `quiet`)
   with component-specific geometry (`drawer`, `rail`, `recommendation-overlay`)
   and one-off typography values ([`apps/astro/src/styles/app.css:41-115`](../../apps/astro/src/styles/app.css#L41-L115)).
   Retain the values, but group and name them as: color roles, type roles,
   layout/container roles, media roles, and interaction roles. Add documented
   minimum target sizes, focus-ring tokens, contrast intent, and breakpoint
   rules. Replace inline ad hoc size strings for tags and hard-coded special
   variables with a stable data-to-style API ([`apps/astro/src/pages/index.astro:23-29`](../../apps/astro/src/pages/index.astro#L23-L29);
   [`apps/astro/src/pages/index.astro:100-101`](../../apps/astro/src/pages/index.astro#L100-L101)).

6. **Centralize responsive image policy and asset ownership.** The detail page
   has a useful TMDB-only `srcset` helper, but it is local to that page and
   deliberately leaves other providers untouched
   ([`apps/astro/src/pages/posts/[id].astro:44-61`](../../apps/astro/src/pages/posts/[id].astro#L44-L61)).
   The feed instead emits one `src` or deferred `data-src` per image
   ([`apps/astro/src/pages/index.astro:76-79`](../../apps/astro/src/pages/index.astro#L76-L79)).
   Define one image model/policy for source URL, preview URL, intrinsic width and
   height, `srcset`, `sizes`, crop role, alt text, and fallback. Prefer the
   repository's intended cached/R2 delivery path before scaling the gallery
   further; README explicitly lists R2-backed image serving as unfinished
   ([`README.md:150-156`](../../README.md#L150-L156)). Preload only the actual
   LCP asset, keep lazy loading for below-fold media, and verify no image is
   blank when JS is disabled or IntersectionObserver is unavailable.

7. **Add an accessibility and responsive regression matrix before extraction of
   components.** The layout intentionally uses a sticky header, mobile drawer,
   two offset rails, dynamic tag sizes, and a desktop recommendation feature
   grid ([`apps/astro/src/layouts/Layout.astro:19-33`](../../apps/astro/src/layouts/Layout.astro#L19-L33);
   [`apps/astro/src/pages/index.astro:48-104`](../../apps/astro/src/pages/index.astro#L48-L104);
   [`apps/astro/src/pages/posts/[id].astro:189-244`](../../apps/astro/src/pages/posts/[id].astro#L189-L244)).
   Test at 320px, 375px, 768px, 1024px, and wide desktop; zoom 200%; keyboard
   only; dark theme; reduced motion; long tags/titles; zero/one/many images;
   and 1/2/3/4/7+ recommendations. Check no horizontal page overflow, no
   clipped controls, readable line lengths, visible focus, logical reading
   order, and stable aspect-ratio layout before and after component reuse.

8. **Repair document semantics and state announcements.** The feed's main
   content has an `aria-label` section but no visible or programmatic page
   heading in the non-empty state ([`apps/astro/src/pages/index.astro:47-50`](../../apps/astro/src/pages/index.astro#L47-L50));
   the detail content similarly begins with an image section and uses `h2` for
   error states ([`apps/astro/src/pages/posts/[id].astro:65-92`](../../apps/astro/src/pages/posts/[id].astro#L65-L92)).
   Add one meaningful `h1` per route while preserving its visual treatment,
   ensure filter changes announce the result, and define heading landmarks for
   mood, tags, and recommendations. Validate quiet/red text contrast rather
   than assuming the OKLCH values are sufficient
   ([`apps/astro/src/styles/app.css:25-38`](../../apps/astro/src/styles/app.css#L25-L38)).

### Low priority

9. **Make theme and font delivery resilient.** The theme checkbox has no
   persistence or explicit preference initialization, and its label text merely
   swaps between “Light” and “Dark” ([`apps/astro/src/layouts/Layout.astro:25-30`](../../apps/astro/src/layouts/Layout.astro#L25-L30)).
   Define the control's action/state wording, persist the user's choice, honor
   the system preference when unset, and prevent a flash where practical. Both
   fonts are local and use `font-display: swap`, but only Newsreader is
   preloaded ([`apps/astro/src/layouts/Layout.astro:16-16`](../../apps/astro/src/layouts/Layout.astro#L16);
   [`apps/astro/src/styles/app.css:4-18`](../../apps/astro/src/styles/app.css#L4-L18)).
   Measure before adding a second preload; the goal is predictable typography,
   not indiscriminate font loading.

10. **Remove fragile page-local layout arithmetic from templates.** The detail
    recommendation grid calculates special spans through nested index/remainder
    rules ([`apps/astro/src/pages/posts/[id].astro:194-244`](../../apps/astro/src/pages/posts/[id].astro#L194-L244)).
    Extract a pure, unit-tested placement function with named cases and a
    documented maximum/overflow policy. Keep the current asymmetrical editorial
    composition, but make changes to recommendation counts unable to silently
    create clipped or empty grid tracks.

## Maintainable target design system

The recommended end state is a **small editorial system**, not a redesign:

- **Roles:** `page`, `media`, `quiet`, `accent`, `focus`, and `inverse` color
  roles, each with light/dark values and tested contrast.
- **Type:** Newsreader for reading/mood copy and Bebas Neue for display/filter
  expression, with named roles for body, label, tag, summary, title, and
  control; no component should invent a new type size inline.
- **Primitives:** shell, heading, text link, button/icon button, tag link,
  media frame, gallery, drawer/disclosure, card, and empty state.
- **Contracts:** every interactive primitive specifies semantic element,
  keyboard behavior, focus-visible appearance, reduced-motion behavior, and
  dark-theme behavior.
- **Content/media:** a shared image descriptor owns URL selection, dimensions,
  responsive variants, loading priority, crop role, and alt text.
- **Composition:** page-level templates retain the current offset rails,
  oversized tags, image grids, paper/ink palette, red accent, and dark mode;
  primitives own only repeatable behavior and visual states.

## Roadmap sequence

1. Capture the baseline screenshot/HTML and run the accessibility/responsive
   matrix against the current static routes.
2. Fix truthful server-side filter state, headings/landmarks, drawer keyboard
   behavior, and gallery semantics without changing visual tokens.
3. Establish the token taxonomy and component contracts; migrate the duplicate
   feed/detail patterns one primitive at a time.
4. Centralize image descriptors and delivery, then connect the intended cached
   image path; measure LCP, transfer bytes, and broken/fallback media.
5. Add regression evidence and remove obsolete page-local class strings and
   arithmetic only after visual parity is proven.

## Roadmap-ready acceptance evidence

A #52 implementation is ready to close only when the roadmap item links all of
the following evidence:

- A token inventory documents every active color, type, spacing, media, focus,
  breakpoint, and motion role; source search shows no unapproved duplicate
  primitive styles or one-off tag-size variables.
- Feed, post detail, gallery/lightbox, filters, tags, recommendation cards, and
  empty states use the documented primitives; visual regression screenshots at
  320/375/768/1024/wide widths show the current identity unchanged.
- Automated keyboard evidence covers skip-to-content or equivalent main
  navigation, theme control, filter open/close/Escape/focus return, all gallery
  controls, lightbox close/focus return, external links, and 200% zoom.
- Automated checks verify one meaningful `h1` per route, valid landmark/heading
  order, accurate `aria-current` and filter results, live result updates, image
  alt text, no focusable hidden content, and no keyboard trap.
- Reduced-motion evidence shows no smooth scrolling or transform transition
  when `prefers-reduced-motion: reduce` is active; dark/light screenshots and a
  contrast report cover all text and focus states.
- Image evidence records the chosen URL, dimensions, `srcset`/`sizes`, loading
  priority, cache/R2 ownership, and fallback behavior for representative TMDB,
  non-TMDB, missing, slow, and JavaScript-disabled cases.
- Responsive tests cover zero/one/many images, long tags/titles, all
  recommendation-count branches, and confirm no page overflow, clipped action,
  broken aspect ratio, or reading-order mismatch.
- The implementation PR includes before/after screenshots and explicitly states
  that the work is a maintainability/accessibility refactor, not a visual
  redesign; any intentional visual delta is listed and approved.
