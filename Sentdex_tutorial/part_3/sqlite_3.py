import sqlite3
import time
import datetime
import random


conn = sqlite3.connect('tutorial.db')
c = conn.cursor()


def main():
    search_word = "unix, keyword"
    read_from_db(search_word)
    c.close()
    conn.close()


def create_table():
    c.execute("""
              CREATE TABLE
              IF NOT EXISTS
              stuffToPlot(unix REAL, datestamp TEXT, keyword TEXT, value REAL)
              """)


def data_entry():
    c.execute("""
              INSERT INTO stuffToPlot VALUES(145123540, '2016-01-02', 'C',
              5)
              """)
    conn.commit()
    c.close()
    conn.close()


def dynamic_data_entry():
    unix = time.time()
    date = str(datetime.datetime.fromtimestamp(unix)
               .strftime('%Y-%m-%d %H:%M:%S'))
    keyword = 'Python'
    value = random.randrange(0, 10)
    c.execute("INSERT INTO stuffToPlot VALUES (?, ?, ?, ?)",
              (unix, date, keyword, value))
    conn.commit()


def read_from_db(search):
    c.execute("SELECT {} FROM stuffToPlot WHERE value = 3 AND unix > 1527275388"
              .format(search))
    data = c.fetchall()
    for record in data:
        print(record)


if __name__ == '__main__':
    main()
