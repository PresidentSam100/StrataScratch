/*
ID 9913
Problem Name: Order Details
Link: https://platform.stratascratch.com/coding/9913-order-details?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
c.first_name,
o.order_date,
o.order_details,
o.total_order_cost
FROM
customers AS c
LEFT JOIN
orders AS o
ON
c.id = o.cust_id
WHERE
c.first_name = 'Jill'
OR
c.first_name = 'Eva'
ORDER BY
o.cust_id ASC
