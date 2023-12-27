/*
ID 10351
Problem Name: Activity Rank
Link: https://platform.stratascratch.com/coding/10351-activity-rank?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Medium
*/
SELECT
    from_user,
    COUNT(*) AS total_emails,
    ROW_NUMBER() OVER ( 
        ORDER BY
        COUNT(*) DESC,
        from_user ASC
    )
FROM
    google_gmail_emails
GROUP BY
    from_user
ORDER BY 3;