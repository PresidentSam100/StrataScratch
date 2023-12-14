/*
ID 10354
Problem Name: Most Profitable Companies
Link: https://platform.stratascratch.com/coding/10354-most-profitable-companies?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    company,
    SUM(profits) AS profit
FROM
    forbes_global_2010_2014
GROUP BY
    company
ORDER BY
    profit DESC
LIMIT 3;