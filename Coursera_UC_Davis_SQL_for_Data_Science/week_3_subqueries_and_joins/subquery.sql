/*
For multiple table in a db, use subquery to connect them.
Always perform the innermost select portion first

DBMS is performing two operations.
    1. Getting the order numbers for the product selected.
    2. Adding that to the where clause and processing the overall select
    statement.

There is no limit to the number of subqueries you can have.
Subquery can only select a single column at a time, and that's why it is used
in filtering a lot.
*/

SELECT
CustomerID
,CompanyName
,Region
FROM Customers
WHERE customerID IN(
    SELECT customerID
    FROM Orders
    WHERE Freight > 100
);



SELECT
    customer_name
    ,customer_state
    (SELECT COUNT (*) AS orders
    FROM Orders
    WHERE Orders.customer_id = Customer.customer_id
)AS orders
FROM customers
ORDER BY Customer_name

