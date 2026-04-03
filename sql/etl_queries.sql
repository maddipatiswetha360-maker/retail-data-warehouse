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

-- SCD Type 2 for customer changes

MERGE INTO dim_customer d
USING staging_customer s
ON (d.customer_id = s.customer_id AND d.is_active = 'Y')

WHEN MATCHED AND (
    d.city <> s.city
) THEN
UPDATE SET 
    d.end_date = SYSDATE,
    d.is_active = 'N'

WHEN NOT MATCHED THEN
INSERT (
    customer_id, customer_name, city, effective_date, end_date, is_active
)
VALUES (
    s.customer_id, s.customer_name, s.city, SYSDATE, NULL, 'Y'
);
