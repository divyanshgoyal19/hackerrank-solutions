-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
-- Problem     Print Prime Numbers
-- Difficulty  Medium
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:07 p.m.
-- Technique   recursive-cte-prime-sieve
-- Time        O(N * sqrt(N))
-- Space       O(N)
-- Insight     The query generates a sequence of integers up to 1000 and filters out composite numbers by verifying that no integer between 2 and the square root of the candidate divides it evenly.
-- Interview   Before: "How would you find primes in SQL?" After: "I used a recursive CTE to generate numbers and a correlated subquery to check divisibility. This approach runs in O(N * sqrt(N)) time, which is efficient for finding all primes up to 1000."
-- Pitfalls    (1) Failing to use the correct separator character '&' as specified in the problem statement.  (2) Incorrectly setting the upper bound of the recursive CTE, which must include 1000.  (3) Using an inefficient primality test that checks divisors beyond the square root of the candidate number.
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
