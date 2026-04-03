# Project Explanation - Retail Data Warehouse

## 1. Problem Statement
Retail businesses need insights into sales, customer behavior, and product performance to make data-driven decisions.

---

## 2. Solution Approach
Designed a data warehouse using a star schema to support analytical queries and reporting.

---

## 3. Data Modeling

### Fact Table
fact_sales:
- sale_id
- customer_id
- product_id
- date_id
- quantity
- total_amount

### Dimension Tables

dim_customer:
- customer_id
- customer_name
- city
- effective_date
- end_date
- is_active

dim_product:
- product_id
- product_name
- category
- price

dim_date:
- date_id
- date
- month
- year

---

## 4. ETL Implementation
- Extracted data from staging tables
- Transformed using joins and calculations
- Loaded into fact and dimension tables

---

## 5. SCD Type 2 Implementation
- Tracked historical changes in customer data
- Used effective_date, end_date, and is_active columns
- Updated old records and inserted new records for changes

---

## 6. Performance Optimization
- Created indexes on frequently queried columns
- Improved query performance

---

## 7. Analytical Queries
- Revenue analysis
- Customer segmentation
- Product performance analysis
- Top-N queries using window functions

---

## 8. Conclusion
This project demonstrates end-to-end data warehousing concepts including modeling, ETL, and analytics using SQL.
