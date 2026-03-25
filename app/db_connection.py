import mysql.connector

def get_connection():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",  
            database="ecommerce_analytics"
        )
        return connection
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None