-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 12:59 p.m.
-- Technique   aggregate-sum-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters rows by the country code column and computes the sum of the population column for all matching records.
-- Interview   Before: "How would you calculate the total population of a specific country?" After: "I would use the SUM aggregate function combined with a WHERE clause to filter by the country code, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the correct country code string literal JPN as specified in the problem requirements.  (2) Using an incorrect column name for population or country code that does not match the CITY table schema.
-- ──────────────────────────────────────────────────

SELECT sum(population) from city where countrycode = "jpn"
