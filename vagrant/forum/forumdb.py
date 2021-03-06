#
# Database access functions for the web forum.
#

import time
import psycopg2

## Database connection
#DB = psycopg2.connect("dbname=forum")
#cursor = DB.cursor
## Get posts from database.
def GetAllPosts():
    '''Get all the posts from the database, sorted with the newest first.

    Returns:
      A list of dictionaries, where each dictionary has a 'content' key
      pointing to the post content, and 'time' key pointing to the time
      it was posted.
    '''
    DB = psycopg2.connect("dbname=forum")
    cursor = DB.cursor()
    cursor.execute("SELECT * FROM posts ORDER BY time;")
    posts = ({'content': str(row[1]), 'time': str(row[0])}
            for row in cursor.fetchall())
    #posts.sort(key=lambda row: row['time'], reverse=True)
    DB.close()
    return posts

## Add a post to the database.
def AddPost(content):
    '''Add a new post to the database.

    Args:
      content: The text content of the new post.
    '''
    DB = psycopg2.connect("dbname=forum")
    cursor = DB.cursor()
    query = ("INSERT INTO posts(content) VALUES(%s), (content, )")
    cursor.execute(query)
    DB.commit()
    DB.close()
