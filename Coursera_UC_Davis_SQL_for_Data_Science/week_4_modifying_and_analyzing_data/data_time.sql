/*
It would be better to check this again when working on a project involving it.
modifier: %()
*/

SELECT Birthday
,STRFTIME('%Y', Birthdate) AS Year
,STRFTIME('%m', Birthdate) AS Month
,STRFTIME('%d', Birthdate) AS Day
FROM employees


SELECT DATE('now')


--compute year, month, and day  for the current date
select strftime('%H %M %S', 'now');
