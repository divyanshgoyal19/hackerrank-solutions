-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-17, 02:24 p.m.
-- Technique   non-equi-join-conditional-sorting
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query uses a non-equi join to map student marks to grade ranges and applies a conditional CASE expression to mask names for grades below eight.
-- Interview   Before: "How do I handle the conditional name masking and multi-level sorting?" After: "Use a CASE statement for the name logic and a multi-column ORDER BY clause. The complexity is O(N log N) due to sorting, where N is the number of students."
-- Pitfalls    (1) Failing to use a non-equi join with BETWEEN to correctly map marks to grade ranges.  (2) Incorrectly ordering by name for grades below eight instead of using marks as the secondary sort key.  (3) Omitting the CASE statement logic which is required to replace names with NULL for grades less than eight.
-- ──────────────────────────────────────────────────

SELECT 
    CASE WHEN g.Grade < 8 THEN NULL ELSE s.Name END AS Name,
    g.Grade,
    s.Marks
FROM Students s
INNER JOIN Grades g 
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;

