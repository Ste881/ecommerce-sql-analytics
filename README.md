# E-commerce Customer Intelligence System (SQL Project)

## Problem Statement
Modern e-commerce businesses generate large volumes of transactional data, but struggle to extract actionable insights related to customer behavior, revenue trends, and retention.

## Objective
To design and implement a SQL-based analytics system that enables:
- Revenue analysis
- Customer segmentation
- Retention tracking
- Product performance evaluation

## Tools Used
- MySQL Workbench
- SQL (CTEs, Joins, Aggregations)

## Project Structure
- `schema.sql` → Database schema
- `data/` → Sample dataset
- `queries/` → Analytical SQL queries
- `insights/` → Business insights

## Database Design

The database consists of four core tables:

- **customers** → Stores user information
- **products** → Stores product catalog
- **orders** → Stores order-level transactions
- **order_items** → Stores item-level details per order

The schema is normalized and uses foreign key constraints to maintain referential integrity.

## Data Generation

Since no public dataset was used, a synthetic dataset was created to simulate real-world e-commerce transactions.

The dataset includes:
- Multiple customers with different signup dates
- Product categories across domains
- Orders distributed over time
- Order-item level granularity

This approach ensures controlled experimentation while preserving realistic business scenarios.

## SQL Analysis

The project includes multiple analytical queries to derive business insights:

### 1. Revenue Analysis
- Monthly revenue trends were calculated to understand sales growth over time.

### 2. Customer Segmentation (RFM)
- Customers were segmented based on:
  - Recency (last purchase)
  - Frequency (number of orders)
  - Monetary value (total spend)

### 3. Retention Analysis
- Identified repeat customers to evaluate customer loyalty.

### 4. Product Performance
- Analyzed top-selling products based on quantity sold.