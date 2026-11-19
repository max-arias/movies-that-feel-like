/**
 * Games hero images: some Reddit posts only have a small upload (a 265px box
 * shot). Stretching one over a full-width hero makes it blurry, so an image
 * marked `data-fit` that is much smaller than its frame gets `data-small`,
 * which shows it whole (object-contain) over its own blurred copy.
 */
export function fitSmallImages(): void {
  document.querySelectorAll<HTMLImageElement>("img[data-fit]").forEach((image) => {
    const check = () => {
      if (!image.naturalWidth || !image.clientWidth) return;
      const small = image.naturalWidth < image.clientWidth * 0.75 || image.naturalHeight < image.clientHeight * 0.75;
      image.toggleAttribute("data-small", small);
    };
    if (image.complete) check();
    else image.addEventListener("load", check, { once: true });
  });
}
