-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 01:48 p.m.
-- Technique   inner-join-group-by-aggregation
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query performs an inner join on matching country codes followed by a group-by operation to calculate the floor of the average population per continent.
-- Interview   Before: "How would you aggregate data across two related tables?" After: "I would use an inner join on the foreign key, then group by the target attribute. This approach runs in O(N + M) time, where N and M are the sizes of the two tables, ensuring efficient aggregation."
-- Pitfalls    (1) Using round() instead of floor() violates the requirement to round down to the nearest integer.  (2) Failing to join on the correct matching key columns results in an incorrect mapping between cities and continents.  (3) Grouping by the wrong column or omitting the group by clause causes aggregation errors.
-- ──────────────────────────────────────────────────

Select cc.continent , floor(avg(c.population))
 from city c join country cc 
on c.countrycode = cc.code  
group by continent 
