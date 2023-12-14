/*
ID 9610
Problem Name: Find students with a median writing score
Link: https://platform.stratascratch.com/coding/9610-find-students-with-a-median-writing-score?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
    id
FROM
    sat_scores
WHERE
    sat_writing = (
        SELECT
            PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY sat_writing)
        FROM
            sat_scores
    );