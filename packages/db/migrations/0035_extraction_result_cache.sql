-- 0035_extraction_result_cache: append-only, auditable LLM extraction results.

CREATE TABLE extraction_result_cache (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Complete cache identity and extraction provenance.
    cache_key                  TEXT    NOT NULL
                               CHECK (length(cache_key) BETWEEN 1 AND 512),
    reddit_post_id             TEXT    NOT NULL
                               CHECK (length(reddit_post_id) BETWEEN 1 AND 128),
    content_hash               TEXT    NOT NULL
                               CHECK (length(content_hash) BETWEEN 1 AND 256),
    prompt_hash                TEXT    NOT NULL
                               CHECK (length(prompt_hash) BETWEEN 1 AND 256),
    prompt_version             TEXT    NOT NULL
                               CHECK (length(prompt_version) BETWEEN 1 AND 128),
    provider                   TEXT    NOT NULL
                               CHECK (length(provider) BETWEEN 1 AND 64),
    model                      TEXT    NOT NULL
                               CHECK (length(model) BETWEEN 1 AND 256),
    api_base                   TEXT
                               CHECK (api_base IS NULL OR length(api_base) BETWEEN 1 AND 2048),
    instructor_mode            TEXT    NOT NULL
                               CHECK (instructor_mode IN ('auto', 'json', 'md_json', 'tools')),
    extractor_version          TEXT    NOT NULL
                               CHECK (length(extractor_version) BETWEEN 1 AND 128),
    payload_schema_version     TEXT    NOT NULL
                               CHECK (length(payload_schema_version) BETWEEN 1 AND 128),

    -- Result payload. A no-result row is deliberately payload-free.
    outcome                    TEXT    NOT NULL
                               CHECK (outcome IN ('extracted', 'no_result')),
    extraction_payload         TEXT
                               CHECK (extraction_payload IS NULL OR json_valid(extraction_payload)),

    -- Source provenance and freshness.
    source_normalized_checksum TEXT    NOT NULL
                               CHECK (length(source_normalized_checksum) BETWEEN 1 AND 256),
    created_at                 TEXT    NOT NULL DEFAULT (datetime('now')),
    fresh_until                TEXT    NOT NULL,

    CHECK (
        (outcome = 'extracted' AND extraction_payload IS NOT NULL AND json_valid(extraction_payload))
        OR
        (outcome = 'no_result' AND extraction_payload IS NULL)
    )
);

CREATE INDEX idx_extraction_result_cache_lookup_newest
    ON extraction_result_cache (cache_key, created_at DESC, id DESC);
