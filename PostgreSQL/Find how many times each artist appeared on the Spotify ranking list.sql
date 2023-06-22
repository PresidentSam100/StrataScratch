/*
ID 9992
Problem Name: Find how many times each artist appeared on the Spotify ranking list
Link: https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
artist,
COUNT(artist) AS n_occurences
FROM
spotify_worldwide_daily_song_ranking
GROUP BY
artist
ORDER BY
n_occurences DESC
