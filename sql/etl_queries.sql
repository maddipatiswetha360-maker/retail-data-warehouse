-- Load Fact Table from Staging

INSERT INTO fact_sales
SELECT 
    s.sale_id,
    c.customer_id,
    p.product_id,
    d.date_id,
    s.quantity,
    s.quantity * p.price AS total_amount
FROM staging_sales s
JOIN dim_customer c 
    ON s.customer_name = c.customer_name
JOIN dim_product p 
    ON s.product_name = p.product_name
JOIN dim_date d 
    ON s.sale_date = d.date_value;

-- Data Quality Check (remove duplicates)
DELETE FROM staging_sales
WHERE sale_id IN (
    SELECT sale_id FROM staging_sales
    GROUP BY sale_id
    HAVING COUNT(*) > 1
);
