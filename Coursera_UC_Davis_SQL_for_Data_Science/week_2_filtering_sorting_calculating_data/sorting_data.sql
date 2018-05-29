/*
ORDER By clause allows user to sort data by particular columns.

Takes the name of one or more columns.
Add a comma after each additional column name.
Can sort by a column not retrieved.
Must always be the last clause in a select statement.
*/

SELECT something
FROM database
ORDER BY characteristic

-- Can use column index.
-- 2 means 2nd column, 3 means 3rd column.
ORDER BY 2,3

DESC --descending order
ASC  --ascending order, only applies to the column names it directly precedes.

