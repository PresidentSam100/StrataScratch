/*
ID 9650
Problem Name: Find the top 10 ranked songs in 2010
Link: https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    year_rank AS rank,
    group_name,
    song_name
FROM
    billboard_top_100_year_end
WHERE
    year = 2010 AND
    year_rank BETWEEN 1 AND 10
GROUP BY
    year_rank,
    group_name,
    song_name;