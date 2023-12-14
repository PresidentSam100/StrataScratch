/*
ID 9891
Problem Name: Customer Details
Link: https://platform.stratascratch.com/coding/9891-customer-details?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT 
c.first_name,
c.last_name, 
c.city,
o.order_details
FROM
customers AS c
LEFT JOIN
orders AS o
ON
c.id = o.cust_id
ORDER BY 
c.first_name ASC,
o.order_details ASC;
