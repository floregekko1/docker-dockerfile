#! /usr/local/bin/python3.5

import sqlite3

db = sqlite3.connect("/home/work1/Chinook_Sqlite.sqlite")

db.row_factory = sqlite3.Row

cursor = db.cursor()

try:
    cursor.execute("SELECT album.title,  group_concat(DISTINCT genre.name) as genres FROM album LEFT JOIN track ON album.albumId = track.albumId LEFT JOIN genre ON  track.genreId = genre.genreId GROUP BY album.title HAVING count(DISTINCT genre.name) > 1")
except sqlite3.OperationalError:
    print('''Une erreur s'est produite ..''')

for row in cursor:
    print('{0} : {1}'.format(row['title'], row['genres']))

db.commit()
db.close()
