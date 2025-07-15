# RDAMP-Dimensional-Model-PowerBI
# Dimensional Modeling & Power BI Reporting

A dimensional modeling and Power BI reporting project for Ace Superstore, built as part of the Realcare Data Analytics Mentorship Program (RDAMP). Includes SQL Server star schema, analytical views, and an interactive dashboard for business insights.


## Project Title

**Ace Superstore: SQL Star Schema and BI Dashboard**

---

## Overview

This project is part of the Realcare Data Analytics Mentorship Program (RDAMP). It focuses on building a dimensional model using SQL Server and creating an interactive Power BI dashboard using views from the model. The goal is to simulate a real-world enterprise data pipeline for reporting and decision-making.

---

## 💡 Objective

To transform cleaned transactional sales data into a structured star schema for optimized querying, and to visualize strategic insights via Power BI.

---

## ✅ Key Deliverables

* Star schema with 7 dimensions and 1 fact table
* 5 SQL views to power strategic business insights
* A fully interactive Power BI dashboard
* GitHub project repository with organized structure
* Dimensional schema diagram

---

## 🧱 Schema Diagram
<img width="1024" height="1024" alt="schema_diagram" src="https://github.com/user-attachments/assets/b30e55e4-d40b-4d82-9cd2-98df71ef04a9" />


---

## 📂 Folder Structure

```
RDAMP-Dimensional-Model-PowerBI/
├── sql/
│   ├── create_tables.sql
│   ├── populate_dimensions.sql
│   ├── populate_fact_table.sql
│   ├── create_views.sql
│   └── queries.sql
├── powerbi/
│   ├── Mosa_Dashboard.pbix
│   └── screenshots/
│       ├── seasonality_heatmap.png
│       ├── discount_vs_profit.png
│       ├── avg_order_segment_channel.png
│       ├── top_customers.png
│       └── category_region_matrix.png
├── schema_diagram.png
└── README.md
```

---

## 📊 Tables Overview

### ➤ Fact Table: `fact_sales`

Stores sales metrics and foreign keys to all dimension tables.

* Metrics: `total_sales`, `total_cost`, `profit`, `discount_amount`, `quantity`

### ➤ Dimension Tables

* `dim_customer`: Customer data with segment ID
* `dim_product`: Product info and category ID
* `dim_category`: Product category names
* `dim_location`: Region, city, and state
* `dim_date`: Includes year, month, quarter
* `dim_segment`: Customer segment types
* `dim_order_mode`: Online or In-Store channel

---

## 🛠️ SQL Setup Instructions

1. Launch SQL Server Management Studio
2. Create database:

```sql
CREATE DATABASE AceSuperstoreDB;
GO
USE AceSuperstoreDB;
```

3. Run in order:

   * `create_tables.sql`
   * `populate_dimensions.sql`
   * `populate_fact_table.sql`
   * `create_views.sql`
   * `queries.sql` *(optional reusable queries)*

---

## 🔗 Power BI Setup

1. Open Power BI Desktop
2. Select **Get Data → SQL Server**
3. Connect to your SQL Server and choose database `AceSuperstoreDB`
4. Import only views:

   * `vw_product_seasonality`
   * `vw_discount_impact_analysis`
   * `vw_customer_order_patterns`
   * `vw_channel_margin_report`
   * `vw_region_category_rankings`
5. Build visuals using these views

---

## 📈 Power BI Dashboard Visuals

### 1. Product Seasonality Trends
<img width="959" height="539" alt="SeasonalTrends" src="https://github.com/user-attachments/assets/5d1f7497-b0fa-47bb-afb6-c7745c01211e" />

View: `vw_product_seasonality`


### 2. Discount vs Profit Analysis
<img width="959" height="539" alt="DiscountVSProfit" src="https://github.com/user-attachments/assets/1621d1b7-f3a6-461f-b375-1bf36e035d5e" />

View: `vw_discount_impact_analysis`


### 3. Avg Order Value by Channel & Segment
<img width="959" height="539" alt="ChannelProfitibilityOverview" src="https://github.com/user-attachments/assets/bf408d3c-03d9-4a3d-a527-4174e62edae4" />

View: `vw_customer_order_patterns`


### 4. Top 10 Customers by Profit
<img width="959" height="539" alt="CustomerOrderBehaviour" src="https://github.com/user-attachments/assets/ef4c638f-d275-4777-88be-9accb6200c59" />

View: `vw_customer_order_patterns`


### 5. Category Ranking by Region
<img width="959" height="539" alt="CategoryRankingsbyRegion" src="https://github.com/user-attachments/assets/f28f2d51-34d4-4f35-844e-b56e1161b719" />

View: `vw_region_category_rankings`

---

## 📄 SQL Views Summary

* `vw_product_seasonality`: Product trends over time
* `vw_discount_impact_analysis`: Relationship between discounts and profits
* `vw_customer_order_patterns`: Order frequency, AOV, and profit by segment
* `vw_channel_margin_report`: Online vs In-store profitability
* `vw_region_category_rankings`: Regional rankings by profit

---

## 🧠 Lessons Learned

* How to design a scalable dimensional model
* Use of SQL views for performance and abstraction
* Power BI techniques for storytelling with data
