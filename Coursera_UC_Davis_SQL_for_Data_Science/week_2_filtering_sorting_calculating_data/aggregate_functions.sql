/*
various aggregate functions: --> predefined functions.
    AVERAGE
    COUNT
    MIN
    MAX
    SUM

If DISTINCT is not specified, ALL is assumed.
*/



AVG()   --> Averages a column of values
COUNT() --> Counts the number of values
MIN()   --> Finds the minimun value
MAX()   --> Finds the maximum value
SUM()   --> Sums the column values


SELECT AVG(UnitPrice) AS avg_price
FROM products;

-- counts all the rows in a table containing values or NULL values
SELECT count(*) AS total_customers
FROM Customers;


-- Counts all the rows in a specific column ignoring NULL values
SELECT COUNT(CustomerID) AS total_customers
FROM Customers


-- NULL values are ignored by the MIN and MAX functions
SELECT MAX(UnitPrice) AS max_prod_price
FROM PRODUCTS;

SELECT MIN(UnitPrice) AS max_prod_price
FROM PRODUCTS;

SELECT SUM(UnitPrice * UnitsInStock) AS total_price
FROM Products
WHERE SupplierID = 23;


-- Specify DISTINCT
SELECT COUNT(DISTINCT CustomerID)
FROM Customers
