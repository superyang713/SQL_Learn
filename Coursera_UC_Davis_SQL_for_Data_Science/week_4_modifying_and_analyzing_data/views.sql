/*
View is a stored query.

Can add or remove columns without changing the schema.

Use it to encapsulate queries

The view will be removed after database connection has ended
*/


CREATE [TEMP] VIEW [IF NOT EXISTS]
view_name(column-name-list)
SELECT statement



CREATE VIEW my_view
AS
SELECT
r.regiondescription
, t.territorydescription
, e.lastname
, e.firstname
FROM Region r
INNER JOIN Territories t ON r.regionid = t.regionid
INNER JOIN Employeeterritories et ON t.TerritoryID = et.TerritoryID
INNER JOIN Employees e ON et.employeeid = e.EmpoyeeID

SELECT *
FROM my_view

DROP VIEW my_view;
