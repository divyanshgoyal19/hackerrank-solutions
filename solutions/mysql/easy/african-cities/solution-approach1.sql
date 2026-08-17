-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:21 p.m.
-- Technique   inner-join-filter
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query retrieves city names by performing an inner join on the country code columns and filtering the resulting set by the continent attribute.
-- Interview   Before: "How do I link two tables to filter by a specific attribute?" After: "Use an INNER JOIN on the matching key columns and apply a WHERE clause to filter by continent. This operation runs in O(N + M) time, where N and M are the sizes of the CITY and COUNTRY tables."
-- Pitfalls    (1) Failing to use the correct join condition on CITY.CountryCode and COUNTRY.Code results in a Cartesian product.  (2) Omitting the WHERE clause causes the query to return all cities regardless of their continent.
-- ──────────────────────────────────────────────────

select c.name from city c join  country cc 
on c.countrycode = cc.code 
where cc.continent = 'africa'
