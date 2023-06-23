/*
ID 9663
Problem Name: Find the most profitable company in the financial sector of the entire world along with its continent
Link: https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=1
Tool(s) Used: PostgreSQL
*/
SELECT
company,
continent
FROM
forbes_global_2010_2014
WHERE
sector = 'Financials'
ORDER BY
profits DESC
LIMIT 1
