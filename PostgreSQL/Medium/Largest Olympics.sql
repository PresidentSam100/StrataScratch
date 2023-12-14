/*
ID 9942
Problem Name: Largest Olympics
Link: https://platform.stratascratch.com/coding/9942-largest-olympics?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    games,
    COUNT(DISTINCT id) AS athletes_count
FROM
    olympics_athletes_events
GROUP BY
    games
ORDER BY
    athletes_count DESC
LIMIT 1;