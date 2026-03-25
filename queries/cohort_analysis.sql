-- Cohort Analysis (Customer Retention by Signup Month)

WITH customer_cohort AS (
    SELECT 
        customer_id,
        DATE_FORMAT(MIN(order_date), '%Y-%m') AS cohort_month
    FROM orders
    GROUP BY customer_id
),
order_activity AS (
    SELECT 
        o.customer_id,
        DATE_FORMAT(o.order_date, '%Y-%m') AS order_month
    FROM orders o
)
SELECT 
    c.cohort_month,
    a.order_month,
    COUNT(DISTINCT a.customer_id) AS active_customers
FROM customer_cohort c
JOIN order_activity a 
    ON c.customer_id = a.customer_id
GROUP BY c.cohort_month, a.order_month
ORDER BY c.cohort_month, a.order_month;