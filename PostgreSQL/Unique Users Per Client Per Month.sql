/*
ID 2024
Problem Name: Unique Users Per Client Per Month
Link: https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
client_id,
EXTRACT(MONTH FROM time_id) AS month,
COUNT(DISTINCT user_id)
FROM
fact_events
GROUP BY
client_id,
month
