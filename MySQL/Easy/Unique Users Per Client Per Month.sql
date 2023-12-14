/*
ID 2024
Problem Name: Unique Users Per Client Per Month
Link: https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=3
Tool(s) Used: MySQL
*/
SELECT
client_id,
EXTRACT(MONTH FROM time_id) AS month,
COUNT(DISTINCT user_id) AS users_num
FROM
fact_events
GROUP BY
client_id,
month