/*
ID 2102
Problem Name: Flags per Video
Link: https://platform.stratascratch.com/coding/2102-flags-per-video?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    video_id,
    count(DISTINCT concat(COALESCE(user_firstname, ''), COALESCE(user_lastname, ''))) AS num_unique_users
FROM
    user_flags
WHERE
    flag_id IS NOT NULL
GROUP BY
    video_id;