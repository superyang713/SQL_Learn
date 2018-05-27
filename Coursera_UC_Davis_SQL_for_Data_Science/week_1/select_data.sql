/*
this is not a script run by any program. It is SQL (SQLite) syntax for
selecting data from  a table run in sqlite3 command line.
*/

/*
SELECT <column_name>
FROM <table_name>;
*/

--Method 1: (not recommended)
/*
SELECT prod_name, prod_id,
prod_price
FROM Products;
*/


--Method 2: (better syntax for viewing)

SELECT  Brand,
        Color,
FROM Shoes;


/*
Use wild card:

SELECT *
FROM Products;


Limit results:

SELECT columns you wish to see
FROM specific table
LIMIT number of records;

SELECT prod_name
FROM Products
LIMIT 5;
*/
