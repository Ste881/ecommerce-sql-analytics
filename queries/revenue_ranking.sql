-- Rank Customers by Total Spending

SELECT 
    customer_id,
    SUM(total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
FROM orders
GROUP BY customer_id;