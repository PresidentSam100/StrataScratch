/*
ID 9972
Problem Name: Find the base pay for Police Captains
Link: https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
employeename,
basepay
FROM
sf_public_salaries
WHERE
jobtitle = 'CAPTAIN III (POLICE DEPARTMENT)'
