/*
Cartesion (Cross) join:
    It allows us to take the each record from the first table and match all of
    the record from the second table.
    It is very taxing.

Caution:
    this type of join does not match anything. It just multiply one table with
    another.
    If the first table has 20 record, and the second table has 30 records, then
    the new joined table will have 600 records.
*/


SELECT product_name
,unit_price
,company_name
FROM suppliers CROSS JOIN products;



/*
Inner join --> Most used join method
    It is used to selects records that have matching values in both tables.
*/

SELECT suppliers.CompanyName
,ProductName
,UnitPrice
FROM Suppliers INNER JOIN Products
ON Suppliers.supplierID = Products.supplierID


SELECT o.OrderID
,c.CompanyName
,e.LastName
FROM ((Orders o INNER JOIN Customers c
       ON o.CustomerID = c.CustomerID)
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID);
