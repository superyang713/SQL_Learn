/*
this is not a script run by any program. It is SQL (SQLite) syntax for
adding data to the table run in sqlite3 command line.
*/


--Method 1: (not recommended)
/*
INSERT INTO Shoes
VALUES ('154342',
        'Gucci',
        'Slippers',
        'Pink',
        '659.23',
        NULL
        );
*/


--Method 2:

INSERT INTO Shoes
    (ID,
     Brand,
     Type,
     Color,
     Price,
     Desc
     );
VALUES
    ('154342',
    'Gucci',
    'Slippers',
    'Pink',
    '659.23',
    NULL
    );
