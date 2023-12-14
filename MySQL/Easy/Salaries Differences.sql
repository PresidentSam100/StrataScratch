/*
ID 10308
Problem Name: Salaries Differences
Link: https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    ABS(
        MAX(CASE
            WHEN dd.department = 'marketing' THEN de.salary
            ELSE 0
            END)
        -
        MAX(CASE
            WHEN dd.department = 'engineering' THEN de.salary
            ELSE 0
            END)
    ) AS salary_difference
FROM
    db_employee AS de
JOIN
    db_dept AS dd
ON
    de.department_id = dd.id;
