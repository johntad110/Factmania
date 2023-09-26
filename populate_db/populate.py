import re
import mysql.connector as msql
from mysql.connector import Error
import uuid

quote_list = []
with open('facts_1.txt') as f:
    i = 0
    for line in f.readlines():
        quote_list.append(re.split(r'^(\d+). ', line)[-1])
        # print(f"added quote {line}")

try:
    conn = msql.connect(host='localhost', database='fun_facts', user='root', password='')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("SELECT database();")
        record = cursor.fetchone()
        print("Connected to database: ", record)
        #add to database
        for quote in quote_list:
            try:
                # print(f"added to db {quote}")
                # cursor.execute(f'INSERT INTO fun_facts.facts_facts VALUES ("{str(uuid.uuid4())}", "{quote}", "", NOW(), NULL, NULL);')
                # INSERT INTO facts_facts VALUES (123456, "the first fact", "No text for this fact", "Duh, No Description too.", "I'm the source!", NOW());
                cursor.execute(f'INSERT INTO fun_facts.facts_facts VALUES ("{uuid.uuid4()}", "{"".join([x[0] for x in quote.split(" ")]).title}", "{quote}", "Description, . . .soon.", "I\'m the source.", NOW());')
            except:
                conn.rollback()
        conn.commit()
        conn.close()
except Error as e:
    print("Error while connecting to MySQL, ", e)