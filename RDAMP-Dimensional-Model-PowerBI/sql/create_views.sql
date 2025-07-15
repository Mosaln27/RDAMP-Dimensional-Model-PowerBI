GO
USE AceSuperstoreDB;

/*Analyze product performance trends over time.*/
CREATE VIEW vw_product_seasonality AS
SELECT 
    dp.product_name,
    dd.year,
    dd.month,
    SUM(fs.quantity) AS total_quantity_sold,
    SUM(fs.total_sales) AS total_sales
FROM fact_sales fs
JOIN dim_product dp ON fs.product_id = dp.product_id
JOIN dim_date dd ON fs.date_id = dd.date_id
GROUP BY dp.product_name, dd.year, dd.month;

/*Understand how discounts affect profitability*/
CREATE VIEW vw_discount_impact_analysis AS
SELECT 
    dp.product_name,
    dd.year,
    dd.month,
    SUM(fs.discount_amount) AS total_discount,
    SUM(fs.profit) AS total_profit,
    ROUND(SUM(fs.profit) / NULLIF(SUM(fs.discount_amount), 0), 2) AS profit_per_discount
FROM fact_sales fs
JOIN dim_product dp ON fs.product_id = dp.product_id
JOIN dim_date dd ON fs.date_id = dd.date_id
GROUP BY dp.product_name, dd.year, dd.month;

/*Track customer behavior by segment.*/
CREATE VIEW vw_customer_order_patterns AS
SELECT 
    ds.segment_name,
    dc.customer_name,
    COUNT(fs.sales_id) AS order_count,
    AVG(fs.total_sales) AS avg_order_value,
    SUM(fs.profit) AS total_profit
FROM fact_sales fs
JOIN dim_customer dc ON fs.customer_id = dc.customer_id
JOIN dim_segment ds ON fs.segment_id = ds.segment_id
GROUP BY ds.segment_name, dc.customer_name;

/*Compare profitability across sales channels*/
CREATE VIEW vw_channel_margin_report AS
SELECT 
    dom.channel AS order_channel,
    COUNT(fs.sales_id) AS total_orders,
    SUM(fs.total_sales) AS total_sales,
    SUM(fs.profit) AS total_profit,
    ROUND(SUM(fs.profit) / NULLIF(SUM(fs.total_sales), 0), 2) AS profit_margin
FROM fact_sales fs
JOIN dim_order_mode dom ON fs.order_mode_id = dom.order_mode_id
GROUP BY dom.channel;

/*Rank product categories by profit per region*/
CREATE VIEW vw_region_category_rankings AS
SELECT 
    dl.region,
    dc.category_name,
    SUM(fs.profit) AS total_profit,
    RANK() OVER (PARTITION BY dl.region ORDER BY SUM(fs.profit) DESC) AS category_rank
FROM fact_sales fs
JOIN dim_location dl ON fs.location_id = dl.location_id
JOIN dim_category dc ON fs.category_id = dc.category_id
GROUP BY dl.region, dc.category_name;

SELECT * FROM vw_product_seasonality;
