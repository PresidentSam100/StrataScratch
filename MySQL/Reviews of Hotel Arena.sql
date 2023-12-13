/*
ID 10166
Problem Name: Reviews of Hotel Arena
Link: https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    hotel_name,
    reviewer_score,
    count(*)
FROM
    hotel_reviews
WHERE
    hotel_name = 'Hotel Arena'
GROUP BY
    hotel_name,
    reviewer_score;
