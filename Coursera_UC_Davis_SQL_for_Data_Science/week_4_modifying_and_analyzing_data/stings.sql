/*
Retrieve the data in the format you need
    Clientvs server formatting

Support Joins

String Functions:
    Concatenate
    Substring
    Trim
    Upper
    Lower
*/


--Concatenate: SQL server supports + instead of ||
SELECT
CompanyName
,ContactName
,CompanyName || '('|| ContactName||')'
FROM customers


--Trimming string
SELECT TRIM("    You the best.     ") AS TrimmedString;


--substring: returns the specified number of characters from a particular
--position of a given string.
--SUBSTR(string name, string position, number of characters to be returned)
SELECT first_name,
SUBSTR(first_name, 3,4)
FROM employees
WHERE department_id=100;


--upper and lower
SELECT UPPER(column_name) FROM table_name;
SELECT LOWER(column_name) FROM table_name;

