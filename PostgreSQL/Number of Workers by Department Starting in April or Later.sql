/*
ID 9847
Problem Name: Number of Workers by Department Starting in April or Later
Link: https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
department,
COUNT(*) AS num_workers
FROM
worker
WHERE
EXTRACT(MONTH FROM joining_date) >= 4
GROUP BY
department
