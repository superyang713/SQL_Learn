-- Basics of Filtering with SQL


/*
SELECT column_name, column_name
FROM table_name
WHERE column_name operator value;

operator value is the following:
    =
    <> or in some cases != (not equal)
    >
    <
    >=
    <=
    BETWEEN
    IS NULL
*/

-- Filtering on a single condition.
SELECT ProductName
,unitPrice
,SupplierID
FROM Prodccts
WHERE ProductName = 'Tofu';


-- Filtering on a single value.
SELECT ProductName
,unitPrice
,SupplierID
FROM Prodccts
WHERE UnitPrice >= 75;


-- Checking for non-matches.
SELECT ProductName
,unitPrice
,SupplierID
FROM Prodccts
WHERE ProductName <> 'Alice Mutton';


-- Filtering with a range of values.
SELECT ProductName
,unitPrice
,SupplierID
,UnitsInStock
FROM Prodccts
WHERE UnitsInStocks BETWEEN 15 AND 80;


-- Filtering No Value. IS NULL is a single phrase.
SELECT ProductName
,unitPrice
,SupplierID
,UnitsInStock
FROM Prodccts
WHERE ProductName IS NULL;
