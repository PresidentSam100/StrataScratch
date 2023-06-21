/*
ID 9622
Problem Name: Number Of Bathrooms And Bedrooms
Link: https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
city,
property_type,
AVG(bathrooms) AS n_bathrooms_avg,
AVG(bedrooms) AS n_bedrooms_avg
FROM
airbnb_search_details
GROUP BY
property_type,
city
