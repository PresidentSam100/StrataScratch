/*
ID 2119
Problem Name: Most Lucrative Products
Link: https://platform.stratascratch.com/coding/2119-most-lucrative-products?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT 
product_id,
SUM(cost_in_dollars * units_sold) AS revenue
FROM
online_orders
WHERE
1 <= EXTRACT(MONTH FROM date) AND EXTRACT(MONTH FROM date) <= 6
GROUP BY
product_id
ORDER BY
revenue DESC
LIMIT 5
