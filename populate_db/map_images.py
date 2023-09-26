import mysql.connector as msql
from mysql.connector import Error
import csv

num = 0
id_url = []
with open('img_urls.csv') as c:
    reader = csv.reader(c)
    for r in reader:
        id_url.append(r)

try:
    conn = msql.connect(host='localhost', database='fun_facts', user='root', password='')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("SELECT database();")
        record = cursor.fetchone()
        print("Connected to database", record)

        for i_u in id_url:
            img_id = i_u[0]
            img_link = i_u[1]
            cursor.execute(f'INSERT INTO fun_facts.facts_images VALUES ({num}, "{img_link}", "{img_id}");')
            num += 1
        conn.commit()
        conn.close()
except Error as e:
    print("Error with db, ", e)