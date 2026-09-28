-- WEEK 2: SQL FOR DATA ANALYSIS
-- Additional Sales Analysis


-- 1. Revenue from orders with quantity >= 2
SELECT
    region,
    SUM(total_price) AS total_revenue
FROM sales
WHERE quantity >= 2
GROUP BY region
ORDER BY total_revenue DESC;


-- 2. Top 10 products by revenue
SELECT
    product_name,
    SUM(quantity) AS units_sold,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;


-- 3. Overall sales KPIs
SELECT
    COUNT(order_id) AS total_orders,
    SUM(total_price) AS total_revenue,
    AVG(total_price) AS average_order_value,
    SUM(quantity) AS total_units_sold
FROM sales;