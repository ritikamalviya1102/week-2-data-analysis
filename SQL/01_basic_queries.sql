-- WEEK 2: SQL FOR DATA ANALYSIS
-- Basic Queries
-- Dataset: Sales (200 rows)

-- 1. Display table structure
DESCRIBE sales;


-- 2. Count total number of rows
SELECT COUNT(*) AS total_rows
FROM sales;


-- 3. SELECT + WHERE
-- Find orders with total price greater than 1000
SELECT *
FROM sales
WHERE total_price > 1000;


-- 4. WHERE with multiple conditions
-- Find orders above 1000 from the North region
SELECT
    order_id,
    customer_name,
    category,
    total_price,
    region
FROM sales
WHERE total_price > 1000
  AND region = 'North';


-- 5. ORDER BY
-- Display the highest-value orders first
SELECT
    order_id,
    customer_name,
    product_name,
    total_price
FROM sales
ORDER BY total_price DESC;


-- 6. Top 10 highest-value orders
SELECT
    order_id,
    customer_name,
    product_name,
    quantity,
    total_price
FROM sales
ORDER BY total_price DESC
LIMIT 10;