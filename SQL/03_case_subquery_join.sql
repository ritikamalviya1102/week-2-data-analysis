-- WEEK 2: SQL FOR DATA ANALYSIS
-- CASE Statements, Subqueries and JOIN


-- 1. CASE statement
-- Classify orders according to their value
SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 5000 THEN 'High Value'
        WHEN total_price >= 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_category
FROM sales;


-- 2. Subquery
-- Find orders with value greater than the overall average order value
SELECT
    order_id,
    customer_name,
    total_price
FROM sales
WHERE total_price > (
    SELECT AVG(total_price)
    FROM sales
)
ORDER BY total_price DESC;


-- 3. JOIN
-- Compare each order with the customer's total spending
-- The customer summary is created using a subquery.
SELECT
    s.order_id,
    s.customer_name,
    s.category,
    s.total_price,
    c.total_spent
FROM sales AS s
JOIN (
    SELECT
        customer_name,
        SUM(total_price) AS total_spent
    FROM sales
    GROUP BY customer_name
) AS c
ON s.customer_name = c.customer_name
ORDER BY c.total_spent DESC;


-- 4. Count orders by value category
SELECT
    COUNT(CASE
        WHEN total_price >= 5000 THEN 1
    END) AS high_value_orders,

    COUNT(CASE
        WHEN total_price >= 2000
             AND total_price < 5000 THEN 1
    END) AS medium_value_orders,

    COUNT(CASE
        WHEN total_price < 2000 THEN 1
    END) AS low_value_orders
FROM sales;