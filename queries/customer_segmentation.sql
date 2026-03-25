-- RFM Analysis (Recency, Frequency, Monetary)
SELECT 
    customer_id,
    DATEDIFF(CURDATE(), MAX(order_date)) AS recency_days,
    COUNT(order_id) AS frequency,
    SUM(total_amount) AS monetary_value
FROM orders
GROUP BY customer_id;