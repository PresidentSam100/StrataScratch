/*
ID 9845
Problem Name: Admin Department Employees Beginning in April or Later
Link: https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=3
Tool(s) Used: MySQL
*/
SELECT
COUNT(*) AS n_admins
FROM
worker
WHERE
LOWER(department) = 'admin'
AND
MONTH(joining_date) >= 4;
