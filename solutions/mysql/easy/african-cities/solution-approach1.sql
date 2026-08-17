-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:21 p.m.
-- ──────────────────────────────────────────────────

select c.name from city c join  country cc 
on c.countrycode = cc.code 
where cc.continent = 'africa'
