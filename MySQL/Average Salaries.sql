/*
ID 9917
Problem Name: Average Salaries
Link: https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3
Tool(s) Used: MySQL
*/
SELECT
department,
first_name,
salary,
AVG(salary) over (PARTITION BY department)
FROM
employee;
