/*
ID 10061
Problem Name: Popularity of Hack
Link: https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
fe.location,
AVG(fhs.popularity) AS avg_popularity
FROM
facebook_employees AS fe
INNER JOIN
facebook_hack_survey AS fhs
ON
fe.id = fhs.employee_id
GROUP BY
fe.location
