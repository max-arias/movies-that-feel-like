-- 0034_enrichment_resolution_cache: append-only enrichment lookup results.
--
-- Each lookup is retained as a separate row so that changes in provider data,
-- resolver behavior, and freshness can be audited without overwriting history.

CREATE TABLE enrichment_resolution_cache (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Complete lookup identity
    provider                   TEXT    NOT NULL
                               CHECK (length(provider) BETWEEN 1 AND 64),
    candidate_key              TEXT    NOT NULL
                               CHECK (length(candidate_key) BETWEEN 1 AND 512),
    candidate_key_version      INTEGER NOT NULL DEFAULT 1
                               CHECK (candidate_key_version > 0),
    query_title                TEXT    NOT NULL
                               CHECK (length(query_title) BETWEEN 1 AND 512),
    query_year                 INTEGER
                               CHECK (query_year IS NULL OR query_year BETWEEN 1800 AND 3000),
    query_media_type           TEXT    NOT NULL
                               CHECK (query_media_type IN ('movie', 'tv', 'game')),
    language                   TEXT    NOT NULL DEFAULT 'en-US'
                               CHECK (length(language) BETWEEN 2 AND 35),
    include_adult              INTEGER NOT NULL DEFAULT 0
                               CHECK (include_adult IN (0, 1)),
    resolver_version           TEXT    NOT NULL
                               CHECK (length(resolver_version) BETWEEN 1 AND 64),

    -- Resolution outcome
    outcome                    TEXT    NOT NULL
                               CHECK (outcome IN ('matched', 'not_found')),
    provider_record_id         TEXT,
    resolved_type              TEXT
                               CHECK (resolved_type IS NULL OR resolved_type IN ('movie', 'tv', 'game')),
    resolved_title             TEXT,
    resolved_year              INTEGER
                               CHECK (resolved_year IS NULL OR resolved_year BETWEEN 1800 AND 3000),
    normalized_payload         TEXT
                               CHECK (normalized_payload IS NULL OR json_valid(normalized_payload)),

    -- Provenance and freshness
    fetched_at                 TEXT    NOT NULL,
    fresh_until                TEXT    NOT NULL,
    source_run_id              INTEGER
                               REFERENCES processing_runs(id) ON DELETE SET NULL,
    source_artifact_checksum   TEXT,
    payload_schema_version     INTEGER NOT NULL DEFAULT 1
                               CHECK (payload_schema_version > 0),

    -- A not-found result has no provider record or resolved fields; a match
    -- must carry the provider identity it resolved to.
    CHECK (
        (outcome = 'matched' AND provider_record_id IS NOT NULL AND resolved_type IS NOT NULL)
        OR
        (outcome = 'not_found' AND provider_record_id IS NULL AND resolved_type IS NULL)
    )
);

-- Seek the newest eligible result for an exact lookup identity.
CREATE INDEX idx_enrichment_resolution_cache_lookup_newest
    ON enrichment_resolution_cache (
        provider,
        candidate_key,
        candidate_key_version,
        query_title,
        query_year,
        query_media_type,
        language,
        include_adult,
        resolver_version,
        fetched_at DESC,
        id DESC
    );
