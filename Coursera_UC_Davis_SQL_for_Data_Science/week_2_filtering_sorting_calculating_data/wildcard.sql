/*
Use the operator LIKE.

Wildcard %, only works on stings:
    '%Pizza' --> Grabs anything ending with the word pizza.
    'Pizza%' --> Grabs anything after the word pizza.
    '%Pizza%' --> Grabs anything before and after the word pizza.

    'S%E' --> Grabs anything that starts with 's' and ends with 'E' (Like Saddie)
    't%@gmail.com' --> Grabs gmail that start with 't'.

    % wildcard will not match NULLS.
*/


SELECT *
FROM Products
WHERE Food like '%pizza';

/*
Wildcard _, not supported by DB2.
    Matches a single character.
*/


SELECT *
FROM Products
WHERE Food like '_pizza';
