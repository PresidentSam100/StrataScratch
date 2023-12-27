/*
ID 9991
Problem Name: Top Ranked Songs
Link: https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT
    trackname,
    COUNT(*) AS times_top1
FROM
    spotify_worldwide_daily_song_ranking
WHERE
    position = 1
GROUP BY
    trackname
ORDER BY
    times_top1 DESC;