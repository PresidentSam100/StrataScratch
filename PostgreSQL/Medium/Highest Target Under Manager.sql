/*
ID 9905
Problem Name: Highest Target Under Manager
Link: https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT
    first_name,
    target
FROM
    salesforce_employees
WHERE
    manager_id = 13
ORDER BY
    target DESC
FETCH FIRST ROWS WITH TIES;