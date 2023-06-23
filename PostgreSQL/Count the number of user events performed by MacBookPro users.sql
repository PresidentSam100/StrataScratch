/*
ID 9653
Problem Name: Count the number of user events performed by MacBookPro users
Link: https://platform.stratascratch.com/coding/9653-count-the-number-of-user-events-performed-by-macbookpro-users?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
event_name,
COUNT(event_name)
FROM
playbook_events
WHERE
device = 'macbook pro'
GROUP BY
event_name
