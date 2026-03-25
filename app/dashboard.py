import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
from db_connection import get_connection

st.set_page_config(page_title="E-commerce Analytics Dashboard", layout="wide")

st.title(" E-commerce Customer Intelligence Dashboard")

# Function to load data
def load_data(query):
    conn = get_connection()
    df = pd.read_sql(query, conn)
    conn.close()
    return df

# --- Revenue Trend ---
st.header("Revenue Trend")

revenue_query = """
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
"""

revenue_df = load_data(revenue_query)

fig, ax = plt.subplots()
ax.plot(revenue_df['month'], revenue_df['revenue'])
ax.set_title("Monthly Revenue")
ax.set_xlabel("Month")
ax.set_ylabel("Revenue")

st.pyplot(fig)

# --- Top Customers ---
st.header("Top Customers")

customer_query = """
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
"""

customer_df = load_data(customer_query)
st.dataframe(customer_df)

# --- Product Performance ---
st.header("Top Products")

product_query = """
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;
"""

product_df = load_data(product_query)
st.dataframe(product_df)