/*
case statement is really good for data cleaning.
very important.

Mimics if-then-else statement found in most programming language.
can be used in SELECT, INSERT, UPDATE, and DELETE statement.
*/


CASE
WHEN C1 THEN E1
WHEN C2 THEN E2
ELSE [result else]
END


CASE input_expression
    WHEN when_expression THEN result_expression [...n]
    [ ELSE else_result_expression ]
END


SELECT
employeeid
,firstname
,lastname
,city
,CASE City
    WHEN 'Calgary' THEN 'Calgary'
ELSE 'Other'
    END calgary
FROM Employees
ORDER BY LastName, FirstName;


SELECT
trackid
,name
,bytes
,CASE
WHEN bytes < 300000 THEN 'small'
WHEN bytes >= 300000 AND bytes <= 500000 then 'medium'
WHEN bytes > 300000 THEN 'large'
ELSE 'Other'
END bytescategory
FROM tracks;

