/*
ID 10166
Problem Name: Reviews of Hotel Arena
Link: https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
hotel_name,
reviewer_score,
COUNT(reviewer_score) AS count
FROM
hotel_reviews
WHERE
hotel_name = 'Hotel Arena'
GROUP BY
reviewer_score,
hotel_name
