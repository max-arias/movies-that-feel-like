-- Keep an explicitly supplied original image URL alongside a display URL.
ALTER TABLE imported_post_images ADD COLUMN alternate_image_url TEXT;
