-- Insert Customers
INSERT INTO dim_customer VALUES (1, 'Swetha', 'Hyderabad', SYSDATE, NULL, 'Y');
INSERT INTO dim_customer VALUES (2, 'Ravi', 'Bangalore', SYSDATE, NULL, 'Y');

-- Insert Products
INSERT INTO dim_product VALUES (101, 'Laptop', 'Electronics', 50000);
INSERT INTO dim_product VALUES (102, 'Phone', 'Electronics', 20000);

-- Insert Dates
INSERT INTO dim_date VALUES (1, DATE '2024-01-01', 1, 2024);
INSERT INTO dim_date VALUES (2, DATE '2024-02-01', 2, 2024);

-- Staging Table (simulate raw data)
CREATE TABLE staging_sales (
    sale_id INT,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    sale_date DATE,
    quantity INT
);

INSERT INTO staging_sales VALUES (1, 'Swetha', 'Laptop', DATE '2024-01-01', 2);
INSERT INTO staging_sales VALUES (2, 'Ravi', 'Phone', DATE '2024-02-01', 1);
