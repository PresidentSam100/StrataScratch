/*
ID 10128
Problem Name: Count the number of movies that Abigail Breslin nominated for oscar
Link: https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    COUNT(*) AS n_movies_by_abi
FROM
    oscar_nominees
WHERE
    nominee = 'Abigail Breslin';
