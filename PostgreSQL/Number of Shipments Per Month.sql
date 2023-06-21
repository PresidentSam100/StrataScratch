/*
ID 2056
Problem Name: Number of Shipments Per Month
Link: https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month
Tool(s) Used: PostgreSQL
*/
SELECT
TO_CHAR(shipment_date, 'yyyy-MM') AS year_month,
COUNT(EXTRACT(MONTH FROM shipment_date))
FROM
amazon_shipment
GROUP BY
TO_CHAR(shipment_date, 'yyyy-MM')
