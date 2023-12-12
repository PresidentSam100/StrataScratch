/*
ID 9924
Problem Name: Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
Link: https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=3
Tool(s) Used: MySQL
*/
SELECT DISTINCT
    home_library_code
FROM
    library_usage
WHERE
    provided_email_address = FALSE AND
    circulation_active_year = 2016 AND
    notice_preference_definition = 'email';
