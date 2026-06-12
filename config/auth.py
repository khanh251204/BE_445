# config.py
import pymysql
from dotenv import load_dotenv
load_dotenv()
import os
def get_auth_connection():
    HOST_AUTH = os.getenv("HOST_AUTH")
    PASSWORD_AUTH = os.getenv("PASSWORD_AUTH")
    DATABASE_AUTH = os.getenv("DATABASE_AUTH")
    connection = pymysql.connect(
        host=HOST_AUTH,
        user="root",
        password=PASSWORD_AUTH,
        database=DATABASE_AUTH,
        cursorclass=pymysql.cursors.DictCursor
    )
    if connection:
        print("Connected to auth_db successfully!")
    else:        
        print("Failed to connect to auth_db.")
    return connection

# from urllib.parse import urlparse
# import os
# import pymysql

# def get_auth_connection():
#     url = urlparse(os.getenv("MYSQL_AUTH_URL"))

#     connection= pymysql.connect(
#         host=url.hostname,
#         port=url.port or 4000,
#         user=url.username,
#         password=url.password,
#         database=url.path.lstrip("/"),
#         ssl={"ssl": {}},
#         cursorclass=pymysql.cursors.DictCursor
#     )

#     print("Connected to auth_db successfully!")
#     return connection