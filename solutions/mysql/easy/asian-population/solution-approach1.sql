-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:17 p.m.
-- ──────────────────────────────────────────────────

select sum(c.population) 
from city c 
join country cc on c.countrycode = cc.code
where cc.continent = 'Asia';
