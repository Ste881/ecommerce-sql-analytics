-- Running Total Revenue Over Time

SELECT 
    order_date,
    SUM(total_amount) AS daily_revenue,
    SUM(SUM(total_amount)) OVER (ORDER BY order_date) AS cumulative_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;