-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
-- Problem     Print Prime Numbers
-- Difficulty  Medium
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:07 p.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
SELECT GROUP_CONCAT(n ORDER BY n SEPARATOR '&')
FROM numbers n1
WHERE NOT EXISTS (
    SELECT 1 FROM numbers n2
    WHERE n2.n BETWEEN 2 AND FLOOR(SQRT(n1.n))
    AND n1.n % n2.n = 0
);
