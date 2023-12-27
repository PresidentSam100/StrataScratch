/*
ID 10353
Problem Name: Workers With The Highest Salaries
Link: https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT
    t.worker_title AS best_paid_title
FROM
    worker AS w
JOIN
    title AS t
ON
    w.worker_id = t.worker_ref_id
ORDER BY
    w.salary DESC
FETCH FIRST ROWS WITH TIES;