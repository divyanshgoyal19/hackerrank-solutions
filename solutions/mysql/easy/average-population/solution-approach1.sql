-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
-- Problem     Average Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 12:55 p.m.
-- Technique   aggregate-floor-function
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the arithmetic mean of the population column and applies the floor function to truncate the result to the nearest integer.
-- Interview   Before: "How do I calculate the average and round it down?" After: "Use the AVG() aggregate function combined with FLOOR() to truncate the result. This operation runs in O(N) time as it requires a single scan of the city table to compute the sum and count."
-- Pitfalls    (1) Using ROUND() instead of FLOOR() will result in incorrect values for cases where the decimal part is 0.5 or greater.  (2) Failing to account for the table schema might lead to errors if the population column contains null values, though AVG() handles nulls by excluding them.
-- ──────────────────────────────────────────────────

SELECT FLOOR(avg(population)) from city;
