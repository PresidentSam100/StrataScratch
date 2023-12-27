/*
ID 10087
Problem Name: Find all posts which were reacted to with a heart
Link: https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT DISTINCT
fp.*
FROM
facebook_posts AS fp
INNER JOIN
facebook_reactions AS fr
ON
fp.post_id = fr.post_id
WHERE
reaction = 'heart'
