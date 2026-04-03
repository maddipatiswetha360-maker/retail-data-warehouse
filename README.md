# Retail Data Warehouse Project

## 📌 Overview
Designed and implemented an end-to-end data warehouse using SQL to analyze retail sales data and generate business insights.

---

## 🏗️ Architecture
Raw Data → Staging Tables → Data Warehouse (Fact & Dimension Tables) → Reporting Layer

---

## 📊 Data Model
Implemented a **Star Schema**:

- Fact Table: fact_sales  
- Dimension Tables:
  - dim_customer  
  - dim_product  
  - dim_date  

---

## 🔄 ETL Process
- Loaded data from staging tables
- Performed transformations using SQL joins
- Calculated derived metrics (total_amount)
- Implemented **Slowly Changing Dimension (SCD Type 2)** for tracking customer changes

---

## ⚡ Key Features
- Star schema data modeling  
- ETL pipeline using SQL  
- SCD Type 2 implementation  
- Analytical queries for business insights  
- Performance optimization using indexing  

---

## 📈 Business Use Cases
- Top-selling products  
- Monthly revenue trends  
- Customer lifetime value  
- Top customers per month  

---

## 🛠️ Tech Stack
- SQL (Oracle / RDBMS)

---

## 👩‍💻 Author
Swetha
