/*
ID 9972
Problem Name: Find the base pay for Police Captains
Link: https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=3
Tool(s) Used: MySQL
*/
SELECT
    employeename,
    basepay
FROM
    sf_public_salaries
WHERE
    LOWER(jobtitle) LIKE '%captain%police%';
