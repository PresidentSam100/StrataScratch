/*
ID 9688
Problem Name: Churro Activity Date
Link: https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    activity_date,
    pe_description
FROM
    los_angeles_restaurant_health_inspections
WHERE
    facility_name = 'STREET CHURROS' AND
    score < 95;
