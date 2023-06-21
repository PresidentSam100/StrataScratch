/*
ID 9917
Problem Name: Average Salaries
Link: https://platform.stratascratch.com/coding/9917-average-salaries?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
department,
first_name,
salary,
AVG(salary) OVER(PARTITION BY department) 
FROM
employee
