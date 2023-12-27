/*
ID 9726
Problem Name: Classify Business Type
Link: https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT DISTINCT
    business_name,
    CASE
        WHEN LOWER(business_name) LIKE '%restaurant%' THEN 'restaurant'
        WHEN LOWER(business_name) LIKE ANY(ARRAY['%cafe%', '%café%', '%coffee%']) THEN 'cafe'
        WHEN LOWER(business_name) LIKE '%school%' THEN 'school'
        ELSE 'other'
    END AS business_type
FROM
    sf_restaurant_health_violations;