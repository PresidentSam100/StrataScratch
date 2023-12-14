/*
ID 9913
Problem Name: Order Details
Link: https://platform.stratascratch.com/coding/9913-order-details?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    c.first_name,
    o.order_date,
    o.order_details,
    o.total_order_cost
FROM
    orders AS o
JOIN customers AS c
    ON o.cust_id = c.id
WHERE
    c.first_name IN ('Jill', 'Eva')
ORDER BY
    o.cust_id ASC;
