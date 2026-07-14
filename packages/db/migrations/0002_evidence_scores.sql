-- 0002_evidence_scores: Add evidence_score to recommendations and
-- evidence_comment_score to recommendation_evidence for ranking.

ALTER TABLE recommendations ADD COLUMN evidence_score REAL NOT NULL DEFAULT 0;

ALTER TABLE recommendation_evidence ADD COLUMN evidence_comment_score INTEGER;
