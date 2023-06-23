/*
ID 10003
Problem Name: Lyft Driver Wages
Link: https://platform.stratascratch.com/coding/10003-lyft-driver-wages?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
*
FROM
lyft_drivers
WHERE
yearly_salary <= 30000
OR
yearly_salary >= 70000;
