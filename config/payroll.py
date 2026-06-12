# config.py
import pymysql
from dotenv import load_dotenv
load_dotenv()
import os

def get_connection():
    HOST_PAYROLL = os.getenv("PAYROLL_HOST")
    USER_PAYROLL = os.getenv("PAYROLL_USER")
    PASSWORD_PAYROLL = os.getenv("PAYROLL_PASSWORD")
    DATABASE_PAYROLL = os.getenv("DATABASE_PAYROLL")
    connection = pymysql.connect(
        host=HOST_PAYROLL,
        user=USER_PAYROLL,
        password=PASSWORD_PAYROLL,
        database=DATABASE_PAYROLL,
        cursorclass=pymysql.cursors.DictCursor
    )
    return connection
