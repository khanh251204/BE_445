import pyodbc
from dotenv import load_dotenv
load_dotenv()
import os

# def get_connection():
#     SERVER = os.getenv("SERVER_HUMAN")
#     DATABASE = os.getenv("DATABASE_HUMAN")
#     conn = pyodbc.connect(
#         "DRIVER={ODBC Driver 17 for SQL Server};"
#         f"SERVER={SERVER};"
#         f"DATABASE={DATABASE};"
#         "Trusted_Connection=yes;"
#         "TrustServerCertificate=yes"
#     )
#     if conn:
#         print("Connected to HUMAN_2025 successfully!")
#     else:        
#         print("Failed to connect to HUMAN_2025.")
#     return conn

# def get_connection():
SERVER = os.getenv("SERVER_HUMAN_AWS")
DATABASE = os.getenv("DATABASE_HUMAN_AWS")
PASSWORD = os.getenv("PASSWORD_HUMAN_AWS")
def get_connection():
    SERVER = os.getenv("SERVER_HUMAN_AWS")
    PASSWORD = os.getenv("PASSWORD_HUMAN_AWS")
    conn = pyodbc.connect(
        "DRIVER={ODBC Driver 18 for SQL Server};"
        f"SERVER={SERVER},1433;"
        "DATABASE=HUMAN;"
        "UID=admin;"
        f"PWD={PASSWORD};"
        "Encrypt=yes;"
        "TrustServerCertificate=yes;"
        "Connection Timeout=30;"
    )

    cursor = conn.cursor()
    cursor.execute("USE HUMAN")

    print("Connected to HUMAN DB")

    return conn