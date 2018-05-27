import sqlite3


conn = sqlite3.connect('tutorial.db')
c = conn.cursor()


def main():
    create_table()
    data_entry()


def create_table():
    c.execute("""
            CREATE TABLE
            IF NOT EXISTS
            stuffToPlot(unix REAL, datestamp TEXT, keyword TEXT, value REAL)
            """)


def data_entry():
    c.execute("""
            insert into stuffToPlot values(145123540, '2016-01-02', 'C',
            5)
            """)
    conn.commit()
    c.close()
    conn.close()


if __name__ == '__main__':
    main()
