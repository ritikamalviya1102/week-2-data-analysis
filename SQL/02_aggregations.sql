-- WEEK 2: SQL FOR DATA ANALYSIS
-- Aggregations: SUM, AVG, COUNT, GROUP BY


-- 1. Total revenue by category
SELECT
    category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;


-- 2. Number of orders by category
SELECT
    category,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY category
ORDER BY total_orders DESC;


-- 3. Average order value by category
SELECT
    category,
    AVG(total_price) AS average_order_value
FROM sales
GROUP BY category
ORDER BY average_order_value DESC;


-- 4. Top 10 customers by total spending
SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;


-- 5. Sales analysis by region
SELECT
    region,
    SUM(total_price) AS total_revenue,
    COUNT(order_id) AS total_orders,
    AVG(total_price) AS average_order_value
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;


-- 6. Revenue by category and sub-category
SELECT
    category,
    sub_category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY category, sub_category
ORDER BY total_revenue DESC;


-- 7. Monthly revenue
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year, order_month;