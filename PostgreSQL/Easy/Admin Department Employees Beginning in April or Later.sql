/*
ID 9845
Problem Name: Admin Department Employees Beginning in April or Later
Link: https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT
COUNT(*) AS n_admins
FROM
worker
WHERE
EXTRACT(MONTH FROM joining_date) >= 4 AND department = 'Admin'
