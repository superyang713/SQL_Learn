/*
IN operator:
    Specify a range of conditions.
    Comma delimited list of values.
    Enclosed in ().
*/

-- IN operator example.
SELECT
ProdctID
,UnitPrice
,SupplierID
FROM Products
WHERE SupplierID IN (9, 10, 11);


/*
DBMS will not evaluate the second conditions in a WHERE clasue if the first
condition is met.
Use for any rows matching the specific conditions.
*/


-- 'Tofu' is evaluated first. If condition is not met, then evaluate 'Konbu'.
SELECT
ProdctID
,UnitPrice
,SupplierID
,ProductName
FROM Products
WHERE ProductName = 'Tofu' OR 'Konbu';


/*
Order of Operations:
    can contain AND and OR operations
    SQL processes AND before OR
    use ()
Dont't rely on the default order of operations. You are better being specific
and getting in the habit of using ().
*/


SELECT
ProdctID
,UnitPrice
,SupplierID
FROM Products
WHERE (SupplierID = 9 OR SupplierID = 11)
AND UnitPrice > 15;


-- NOT operator
SELECT *
FROM Employees
WHERE NOT City = 'London' AND NOT City = 'Seattle';
