/*
ID 9847
Problem Name: Number of Workers by Department Starting in April or Later
Link: https://platform.stratascratch.com/coding/9847-find-the-number-of-workers-by-department?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    department,
    COUNT(worker_id) AS num_workers
FROM
    worker
WHERE
    MONTH(joining_date) >= 4
GROUP BY
    department;
