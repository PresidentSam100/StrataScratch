/*
ID 10299
Problem Name: Finding Updated Records
Link: https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT
id,
first_name,
last_name,
department_id,
MAX(salary)
FROM
ms_employee_salary
GROUP BY
id,
first_name,
last_name,
department_id
ORDER BY
id ASC
