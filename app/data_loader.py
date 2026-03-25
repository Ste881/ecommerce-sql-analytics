import pandas as pd
from db_connection import get_connection

def load_query(query):
    connection = get_connection()
    
    if connection is None:
        print("Connection failed")
        return None

    try:
        df = pd.read_sql(query, connection)
        return df
    except Exception as e:
        print(f"Error: {e}")
        return None
    finally:
        connection.close()


if __name__ == "__main__":
    query = """
    SELECT 
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue
    FROM orders
    GROUP BY month
    ORDER BY month;
    """

    df = load_query(query)
    print(df)