/*
ID 9915
Problem Name: Highest Cost Orders
Link: https://platform.stratascratch.com/coding/9915-highest-cost-orders?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT
    c.first_name,
    SUM(o.total_order_cost) AS total_order_cost,
    o.order_date
FROM
    orders AS o
JOIN
    customers AS c
ON
    o.cust_id = c.id
WHERE
    o.order_date BETWEEN
    '2019-02-01' AND '2019-05-01'
GROUP BY
    c.first_name,
    order_date
ORDER BY    
    total_order_cost DESC
LIMIT 1;