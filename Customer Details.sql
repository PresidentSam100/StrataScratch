/*
ID 9891
Problem Name: Customer Details
Link: https://platform.stratascratch.com/coding/9891-customer-details?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT 
customers.first_name,
customers.last_name, 
customers.city,
orders.order_details
FROM
customers
LEFT JOIN
orders
ON
customers.id = orders.cust_id
ORDER BY 
customers.first_name ASC,
orders.order_details ASC;
