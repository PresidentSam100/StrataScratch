/*
ID 9924
Problem Name: Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
Link: https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=1
Tool(s) Used: PostgreSQL
Difficulty: Easy
*/
SELECT DISTINCT
home_library_code
FROM
library_usage
WHERE
year_patron_registered <= 2016
AND
notice_preference_definition = 'email'
AND
provided_email_address = FALSE
