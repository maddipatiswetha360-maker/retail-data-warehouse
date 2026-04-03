# Retail Data Warehouse Project

## Overview
This project demonstrates the design and implementation of an end-to-end data warehouse using SQL.  
It simulates a real-world retail business scenario where sales data is processed and analyzed.

---

## Architecture
Raw Data → Staging Layer → Data Warehouse (Fact & Dimension Tables)

---

## Data Model
- **Fact Table**
  - fact_sales: Stores transactional sales data

- **Dimension Tables**
  - dim_customer: Customer details
  - dim_product: Product information
  - dim_date: Date-related attributes

---

## ETL Process
- Extracted data into staging table
- Transformed using SQL joins
- Loaded into fact table
- Implemented data quality checks

---

## Business Use Cases
- Top revenue generating products
- Monthly sales trend analysis
- Customer lifetime value
- Identifying repeat customers

---

## Tech Stack
- SQL (Oracle / RDBMS)

---

## Future Enhancements
- Integrate with Azure Data Factory (ADF)
- Process large data using Databricks (PySpark)
- Build dashboards using Power BI

---

## Author
Swetha Maddipati
