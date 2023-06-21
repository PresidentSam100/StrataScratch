/*
ID 2056
Problem Name: Number of Shipments Per Month
Link: https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
TO_CHAR(shipment_date, 'yyyy-MM'),
COUNT(EXTRACT(MONTH FROM shipment_date))
FROM
amazon_shipment
GROUP BY
TO_CHAR(shipment_date, 'yyyy-MM')
