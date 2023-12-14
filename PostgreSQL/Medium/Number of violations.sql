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