/*
ID 10299
Problem Name: Finding Updated Records
Link: https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    id,
    first_name,
    last_name,
    department_id,
    max(salary)
FROM
    ms_employee_salary
GROUP BY
    first_name,
    last_name,
    department_id
ORDER BY
    id ASC;
