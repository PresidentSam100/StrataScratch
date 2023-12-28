"""
ID 10308
Problem Name: Salaries Differences
Link: https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=2
Tool(s) Used: Python
Difficulty: Easy
"""

# Import your libraries
import pandas as pd

# Start writing code
db = db_employee.merge(db_dept, left_on='department_id', right_on='id')
m = db[db.department == 'marketing']['salary'].max()
e = db[db.department == 'engineering']['salary'].max()
abs(m - e)