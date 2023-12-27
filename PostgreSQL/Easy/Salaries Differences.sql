/*
ID 10308
Problem Name: Salaries Differences
Link: https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT
(
SELECT
MAX(e.salary)
FROM
db_employee AS e
INNER JOIN
db_dept AS d
ON
e.department_id = d.id
GROUP BY
d.department
HAVING
d.department = 'marketing'
)
-
(
SELECT
MAX(e.salary)
FROM
db_employee AS e
INNER JOIN
db_dept AS d
ON
e.department_id = d.id
GROUP BY
d.department
HAVING
d.department = 'engineering'
)
AS salary_difference
