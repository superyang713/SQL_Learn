/*
this is not a script run by any program. It is SQL (SQLite) syntax for
creating a temporary table run in sqlite3 command line.
Note: the syntax from the course has a pair of brackets after as statement,
which does not work for me.
*/


/*
create temporary table <table_name> as
    select < column names or * >
    from <table_name>
    where <condition>;
*/


create temporary table Slippers as
    select *
    from Shoes
    where type = 'Slippers';
