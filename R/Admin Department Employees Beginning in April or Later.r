"
ID 9845
Problem Name Admin Department Employees Beginning in April or Later
Link httpsplatform.stratascratch.comcoding9845-find-the-number-of-employees-working-in-the-admin-departmentcode_type=4
Tool(s) Used R
"

library(dplyr)
worker %%
    filter(month(joining_date) = 4, department == 'Admin') %%
    count();