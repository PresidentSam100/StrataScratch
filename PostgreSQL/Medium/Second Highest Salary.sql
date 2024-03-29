/*
ID 9892
Problem Name: Second Highest Salary
Link: https://platform.stratascratch.com/coding/9892-second-highest-salary?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT DISTINCT
    MAX(salary)
FROM
    employee
WHERE
    salary != (
        SELECT
            MAX(salary) 
        FROM
            employee
    );