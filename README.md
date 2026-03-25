#  E-commerce Customer Intelligence System

##  Overview
This project builds a complete data analytics pipeline for an e-commerce business using SQL, Python and an interactive dashboard.

It demonstrates how raw transactional data can be transformed into actionable business insights through structured querying and visualization.

---

##  Objectives
- Analyze revenue trends over time
- Segment customers based on purchasing behavior
- Evaluate customer retention patterns
- Identify top-performing products
- Build an interactive analytics dashboard

---

##  Tech Stack
- **MySQL** → Database & analytics
- **SQL** → Data querying (joins, aggregations, window functions)
- **Python (pandas)** → Data extraction and processing
- **Streamlit** → Dashboard visualization
- **Matplotlib** → Data visualization

---

##  Project Structure


ecommerce-sql-analytics/
│
├── app/
│ ├── init.py
│ ├── db_connection.py # Handles MySQL connection
│ ├── data_loader.py # Executes SQL queries via Python
│ └── dashboard.py # Streamlit dashboard
│
├── data/
│ └── sample_data.sql # Synthetic dataset
│
├── queries/
│ ├── revenue_analysis.sql
│ ├── customer_segmentation.sql
│ ├── retention_analysis.sql
│ ├── product_performance.sql
│ ├── cohort_analysis.sql
│ ├── revenue_ranking.sql
│ └── running_revenue.sql
│
├── insights/
│ └── business_findings.md # Key insights & recommendations
│
├── schema.sql # Database schema
└── README.md


---

##  Database Schema

The project uses a normalized relational database with four core tables:

- **customers** → Customer details  
- **products** → Product catalog  
- **orders** → Order-level transactions  
- **order_items** → Item-level order details  

---

##  Key Analyses

### 1. Revenue Analysis
- Monthly revenue trends to track business growth

### 2. Customer Segmentation (RFM)
- Recency → Days since last purchase  
- Frequency → Number of orders  
- Monetary → Total spending  

### 3. Retention Analysis
- Identifies repeat customers

### 4. Cohort Analysis
- Tracks customer retention over time

### 5. Product Performance
- Identifies top-selling products

### 6. Advanced SQL
- Window functions (ranking)
- Running totals
- Cohort grouping

---

##  Key Insights

- A small group of customers contributes disproportionately to revenue
- Repeat customers drive consistent sales
- Certain products dominate sales volume
- Revenue shows steady cumulative growth over time
- Customer retention varies across cohorts

---

##  Dashboard

An interactive Streamlit dashboard provides:

-  Revenue trend visualization  
-  Top customers by spending  
-  Product performance insights  

---

##  How to Run the Project

### 1. Setup Database

Open MySQL Workbench and run:

```sql
-- Run these files in order
schema.sql
data/sample_data.sql