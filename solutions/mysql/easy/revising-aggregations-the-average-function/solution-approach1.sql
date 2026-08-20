-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - Averages
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-20, 06:45 p.m.
-- Technique   aggregate-function-with-filter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query filters the dataset by the district column before applying the average aggregate function to the population column.
-- Interview   Before: "How would you calculate the mean population for a specific region?" After: "I would use the AVG() aggregate function combined with a WHERE clause to filter by district, resulting in O(N) time complexity as the database performs a full scan of the table to compute the average."
-- Pitfalls    (1) Failing to use the correct column name for the filter condition as specified in the schema.  (2) Assuming the AVG function handles null values by including them in the denominator, whereas SQL aggregate functions typically ignore nulls.
-- ──────────────────────────────────────────────────

SELECT avg(population) from city where district = "california"
