/*
ID 10308
Problem Name: Salaries Differences
Link: https://platform.stratascratch.com/coding/10308-salaries-differences
Tool(s) Used: PostgreSQL
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
