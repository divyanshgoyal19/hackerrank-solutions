-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 12:59 p.m.
-- ──────────────────────────────────────────────────

SELECT sum(population) from city where countrycode = "jpn"
