/*
Learn how to group data in order to summerize subsets of data.
New clauses GROUP BY; HAVING
How to aggregate on a particular value.
*/

/*
1. GROUP BY clauses can contain multiple columns.
2. Every column in your SELECT statement must be present in a GROUP BY clause,
except for aggregated calculations.
3. NULLs will be grouped together if your GROUP BY column contains NULLS.
*/

SELECT
Region
, COUNT(CustomerID) AS total_customers
FROM Customers
GROUP BY Region;


/*
Filtering for groups
    WHERE clause is not working for groups.
    WHERE filters on rows.
    Instead, use HAVING clause to filter for groups.
*/

SELECT
CustomerID
,COUNT(*) AS orders
FROM orders
GROUP BY CustomerID
HAVING count(*) >=2;

/*
Important note:
    WHERE filters before data is grouped.
    HAVING filters after data is grouped.
    Rows eliminated by the WHERE clause will not be included in the group.
*/
