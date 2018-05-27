-- this is not a script run by any program. It is SQL (SQLite) syntax for
-- creating a table run in sqlite3 command line.


CREATE TABLE Shoes
    (
    ID          char(10)            Primary Key,
    Brand       char(10)            NOT NULL,
    Type        char(250)           NOT NULL,
    Color       char(250)           NOT NULL,
    Price       decimal(8,2)        NOT NULL,
    Desc        Varchar(750)        NULL
    );
