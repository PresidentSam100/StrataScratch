/*
ID 2056
Problem Name: Number of Shipments Per Month
Link: https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=3
Tool(s) Used: MySQL
*/
SELECT
DATE_FORMAT(shipment_date, "%Y-%m") yearmonth,
COUNT(shipment_id) AS count
FROM
amazon_shipment
GROUP BY
yearmonth;
