/*
ID 10061
Problem Name: Popularity of Hack
Link: https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    location,
    AVG(popularity) AS avg_popularity
FROM
    facebook_employees AS fe
JOIN
    facebook_hack_survey AS fhs
ON
    fhs.employee_id = fe.id
GROUP BY
    fe.location
