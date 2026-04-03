-- 1. Top Products by Revenue
SELECT p.product_name, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- 2. Monthly Sales Trend
SELECT d.year, d.month, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

-- 3. Customer Lifetime Value
SELECT c.customer_name, SUM(f.total_amount) AS total_spent
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 4. Repeat Customers
SELECT customer_id, COUNT(*) AS purchase_count
FROM fact_sales
GROUP BY customer_id
HAVING COUNT(*) > 1;
