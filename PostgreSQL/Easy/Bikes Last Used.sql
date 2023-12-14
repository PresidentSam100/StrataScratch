/*
ID 10176
Problem Name: Bikes Last Used
Link: https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
bike_number,
MAX(end_time) AS last_used
FROM
dc_bikeshare_q1_2012
GROUP BY
bike_number
ORDER BY
last_used DESC
