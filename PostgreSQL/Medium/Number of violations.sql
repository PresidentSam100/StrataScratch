/*
ID 9728
Problem Name: Number of violations
Link: https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    EXTRACT(YEAR FROM inspection_date) AS year,
    COUNT(*) AS n_inspections
FROM
    sf_restaurant_health_violations
WHERE
    business_name = 'Roxanne Cafe' AND
    violation_id IS NOT NULL
GROUP BY
    year
ORDER BY
    year ASC;