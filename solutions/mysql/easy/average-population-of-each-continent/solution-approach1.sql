-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:48 p.m.
-- ──────────────────────────────────────────────────

Select cc.continent , floor(avg(c.population))
 from city c join country cc 
on c.countrycode = cc.code  
group by continent 
