-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:17 p.m.
-- Technique   inner-join-aggregation
-- Time        O(N + M)
-- Space       O(1)
-- Insight     The query performs an inner join on matching country codes and aggregates the population column for all rows where the continent attribute equals 'Asia'.
-- Interview   Before: "How would you calculate the total population of a specific continent across two related tables?" After: "I would use an INNER JOIN on the shared country code column and apply a SUM aggregation with a WHERE filter, resulting in O(N + M) time complexity where N and M are table sizes."
-- Pitfalls    (1) Failing to use the correct join condition between CITY.CountryCode and COUNTRY.Code results in an incorrect Cartesian product.  (2) Omitting the WHERE clause causes the query to sum populations across all continents instead of filtering for 'Asia'.
-- ──────────────────────────────────────────────────

select sum(c.population) 
from city c 
join country cc on c.countrycode = cc.code
where cc.continent = 'Asia';
