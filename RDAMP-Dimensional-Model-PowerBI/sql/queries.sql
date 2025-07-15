/*Database creation*/
CREATE DATABASE AceSuperstoreDB;

/*Accesss Database*/
GO
USE AceSuperstoreDB;

/*Dimension Tables creation*/
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    segment_id INT,
    email VARCHAR(100)
);

CREATE TABLE dim_segment (
    segment_id INT PRIMARY KEY,
    segment_name VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2)
);

CREATE TABLE dim_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE dim_location (
    location_id INT PRIMARY KEY,
    region VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE dim_order_mode (
    order_mode_id INT PRIMARY KEY,
    channel VARCHAR(50)
);

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    order_date DATE,
    year INT,
    month INT,
    quarter INT
);

/*Fact Table creation*/
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT NOT NULL,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    location_id INT NOT NULL,
    category_id INT NOT NULL,
    segment_id INT NOT NULL,
    order_mode_id INT NOT NULL,
    total_sales DECIMAL(10,2),
    total_cost DECIMAL(10,2),
    profit DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    quantity INT,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id),
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id),
    FOREIGN KEY (segment_id) REFERENCES dim_segment(segment_id),
    FOREIGN KEY (order_mode_id) REFERENCES dim_order_mode(order_mode_id)
);


/*Table Population*/
/*Segment*/
INSERT INTO dim_segment VALUES
(1, 'Consumer'),
(2, 'Corporate'),
(3, 'Home Office');

/*Category*/
INSERT INTO dim_category VALUES
(1, 'Technology'),
(2, 'Office Supplies'),
(3, 'Furniture');

/*Order Mode*/
INSERT INTO dim_order_mode VALUES
(1, 'Online'),
(2, 'In-Store');

/*Location*/
INSERT INTO dim_location VALUES
(1, 'East', 'New York', 'NY'),
(2, 'West', 'Los Angeles', 'CA'),
(3, 'Central', 'Chicago', 'IL');

/*Date*/
INSERT INTO dim_date VALUES
(1, '2025-01-15', 2025, 1, 1),
(2, '2025-02-20', 2025, 2, 1),
(3, '2025-03-10', 2025, 3, 1),
(4, '2025-04-18', 2025, 4, 2);

/*Customer*/
INSERT INTO dim_customer VALUES
(1, 'John Doe', 1, 'john.doe@example.com'),
(2, 'Jane Smith', 2, 'jane.smith@example.com'),
(3, 'Alice Johnson', 3, 'alice.j@example.com');

/*Product*/
INSERT INTO dim_product VALUES
(1, 'iPad Pro', 1, 999.99),
(2, 'Office Chair', 3, 150.00),
(3, 'Printer Paper', 2, 25.50);


/*Repopulate Order Mode*/
INSERT INTO dim_order_mode VALUES
(3, 'Phone'),
(4, 'Mobile App'),
(5, 'Email'),
(6, 'Web Portal'),
(7, 'Sales Rep'),
(8, 'Live Chat'),
(9, 'Social Media'),
(10, 'Retail Kiosk'),
(11, 'Marketplace'),
(12, 'Subscription'),
(13, 'Direct Mail'),
(14, 'Affiliate'),
(15, 'Referral'),
(16, 'Event Booth'),
(17, 'Pop-up Store'),
(18, 'Partner Portal'),
(19, 'Wholesale'),
(20, 'B2B Platform'),
(21, 'Telemarketing'),
(22, 'SMS'),
(23, 'In-App Purchase'),
(24, 'QR Code'),
(25, 'Virtual Assistant'),
(26, 'Self-Service Terminal'),
(27, 'Interactive Voice'),
(28, 'Community Forum'),
(29, 'Third-Party Vendor'),
(30, 'Field Agent'),
(31, 'Demo Session'),
(32, 'Trade Show');


/*Repopulate Location*/
INSERT INTO dim_location VALUES
(4, 'South', 'Houston', 'TX'),
(5, 'North', 'Boston', 'MA'),
(6, 'East', 'Miami', 'FL'),
(7, 'West', 'San Francisco', 'CA'),
(8, 'Central', 'Dallas', 'TX'),
(9, 'South', 'Atlanta', 'GA'),
(10, 'North', 'Detroit', 'MI'),
(11, 'East', 'Philadelphia', 'PA'),
(12, 'West', 'Seattle', 'WA'),
(13, 'Central', 'Denver', 'CO'),
(14, 'South', 'Orlando', 'FL'),
(15, 'North', 'Minneapolis', 'MN'),
(16, 'East', 'Baltimore', 'MD'),
(17, 'West', 'Phoenix', 'AZ'),
(18, 'Central', 'St. Louis', 'MO'),
(19, 'South', 'Charlotte', 'NC'),
(20, 'North', 'Cleveland', 'OH'),
(21, 'East', 'Richmond', 'VA'),
(22, 'West', 'Portland', 'OR'),
(23, 'Central', 'Kansas City', 'KS'),
(24, 'South', 'Tampa', 'FL'),
(25, 'North', 'Buffalo', 'NY'),
(26, 'East', 'Newark', 'NJ'),
(27, 'West', 'Las Vegas', 'NV'),
(28, 'Central', 'Omaha', 'NE'),
(29, 'South', 'Birmingham', 'AL'),
(30, 'North', 'Madison', 'WI'),
(31, 'East', 'Providence', 'RI'),
(32, 'West', 'Sacramento', 'CA'),
(33, 'Central', 'Indianapolis', 'IN');

/*Repopulate Date*/
INSERT INTO dim_date VALUES
(5, '2025-05-12', 2025, 5, 2),
(6, '2025-06-08', 2025, 6, 2),
(7, '2025-07-15', 2025, 7, 3),
(8, '2025-08-20', 2025, 8, 3),
(9, '2025-09-10', 2025, 9, 3),
(10, '2025-10-18', 2025, 10, 4),
(11, '2025-11-05', 2025, 11, 4),
(12, '2025-12-22', 2025, 12, 4),
(13, '2025-01-05', 2025, 1, 1),
(14, '2025-02-14', 2025, 2, 1),
(15, '2025-03-25', 2025, 3, 1),
(16, '2025-04-30', 2025, 4, 2),
(17, '2025-05-18', 2025, 5, 2),
(18, '2025-06-25', 2025, 6, 2),
(19, '2025-07-04', 2025, 7, 3),
(20, '2025-08-12', 2025, 8, 3),
(21, '2025-09-30', 2025, 9, 3),
(22, '2025-10-10', 2025, 10, 4),
(23, '2025-11-22', 2025, 11, 4),
(24, '2025-12-01', 2025, 12, 4),
(25, '2025-01-20', 2025, 1, 1),
(26, '2025-02-28', 2025, 2, 1),
(27, '2025-03-15', 2025, 3, 1),
(28, '2025-04-05', 2025, 4, 2),
(29, '2025-05-25', 2025, 5, 2),
(30, '2025-06-10', 2025, 6, 2),
(31, '2025-07-30', 2025, 7, 3),
(32, '2025-08-05', 2025, 8, 3),
(33, '2025-09-18', 2025, 9, 3),
(34, '2025-10-25', 2025, 10, 4);


/*Repopulate Customer*/
INSERT INTO dim_customer VALUES
(4, 'Michael Brown', 1, 'michael.b@example.com'),
(5, 'Sarah Lee', 2, 'sarah.lee@example.com'),
(6, 'David Kim', 3, 'david.k@example.com'),
(7, 'Emily Davis', 1, 'emily.d@example.com'),
(8, 'Chris Johnson', 2, 'chris.j@example.com'),
(9, 'Olivia Taylor', 3, 'olivia.t@example.com'),
(10, 'Daniel White', 1, 'daniel.w@example.com'),
(11, 'Sophia Green', 2, 'sophia.g@example.com'),
(12, 'James Hall', 3, 'james.h@example.com'),
(13, 'Ava Young', 1, 'ava.y@example.com'),
(14, 'Ethan King', 2, 'ethan.k@example.com'),
(15, 'Isabella Scott', 3, 'isabella.s@example.com'),
(16, 'Liam Adams', 1, 'liam.a@example.com'),
(17, 'Mia Nelson', 2, 'mia.n@example.com'),
(18, 'Noah Carter', 3, 'noah.c@example.com'),
(19, 'Charlotte Mitchell', 1, 'charlotte.m@example.com'),
(20, 'Lucas Perez', 2, 'lucas.p@example.com'),
(21, 'Amelia Roberts', 3, 'amelia.r@example.com'),
(22, 'Benjamin Turner', 1, 'benjamin.t@example.com'),
(23, 'Harper Phillips', 2, 'harper.p@example.com'),
(24, 'Elijah Campbell', 3, 'elijah.c@example.com'),
(25, 'Abigail Parker', 1, 'abigail.p@example.com'),
(26, 'Henry Evans', 2, 'henry.e@example.com'),
(27, 'Ella Edwards', 3, 'ella.e@example.com'),
(28, 'Sebastian Collins', 1, 'sebastian.c@example.com'),
(29, 'Grace Stewart', 2, 'grace.s@example.com'),
(30, 'Jack Morris', 3, 'jack.m@example.com'),
(31, 'Chloe Rogers', 1, 'chloe.r@example.com'),
(32, 'William Reed', 2, 'william.r@example.com'),
(33, 'Lily Cook', 3, 'lily.c@example.com');

/*Repopulate Product*/
INSERT INTO dim_product VALUES
(4, 'Wireless Mouse', 1, 45.00),
(5, 'Desk Lamp', 3, 60.00),
(6, 'Notebook', 2, 15.00),
(7, 'Monitor', 1, 250.00),
(8, 'Bookshelf', 3, 120.00),
(9, 'Stapler', 2, 12.00),
(10, 'Keyboard', 1, 80.00),
(11, 'Desk Organizer', 3, 35.00),
(12, 'Pens Pack', 2, 10.00),
(13, 'Laptop', 1, 1200.00),
(14, 'Office Desk', 3, 300.00),
(15, 'Sticky Notes', 2, 5.00),
(16, 'Smartphone', 1, 899.00),
(17, 'Filing Cabinet', 3, 250.00),
(18, 'Paper Clips', 2, 3.00),
(19, 'Tablet', 1, 499.00),
(20, 'Chair Mat', 3, 75.00),
(21, 'Highlighters', 2, 8.00),
(22, 'Smartwatch', 1, 199.00),
(23, 'Conference Table', 3, 600.00),
(24, 'Binders', 2, 20.00),
(25, 'Bluetooth Speaker', 1, 150.00),
(26, 'Cushioned Chair', 3, 180.00),
(27, 'Whiteboard Markers', 2, 6.00),
(28, 'Webcam', 1, 85.00),
(29, 'Standing Desk', 3, 450.00),
(30, 'Printer Ink', 2, 30.00),
(31, 'Router', 1, 120.00),
(32, 'File Tray', 3, 40.00),
(33, 'Envelopes', 2, 7.00);

/*Sales*/
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 999.99, 650.00, 349.99, 50.00, 1),
(2, 2, 2, 2, 2, 3, 2, 2, 300.00, 200.00, 100.00, 20.00, 2),
(3, 3, 3, 3, 3, 2, 3, 1, 51.00, 35.00, 16.00, 4.00, 2),
(4, 4, 1, 2, 1, 1, 2, 2, 1999.98, 1300.00, 699.98, 100.00, 2),
(5, 2, 2, 3, 2, 3, 3, 1, 150.00, 100.00, 50.00, 10.00, 1);

/*Repopulate Sales*/
INSERT INTO fact_sales VALUES
(6, 5, 4, 4, 4, 1, 1, 3, 90.00, 60.00, 30.00, 10.00, 2),
(7, 6, 5, 5, 5, 3, 2, 4, 120.00, 80.00, 40.00, 15.00, 1),
(8, 7, 6, 6, 6, 2, 3, 5, 45.00, 30.00, 15.00, 5.00, 3),
(9, 8, 7, 7, 7, 1, 1, 6, 500.00, 350.00, 150.00, 50.00, 2),
(10, 9, 8, 8, 8, 3, 2, 7, 240.00, 180.00, 60.00, 20.00, 1),
(11, 10, 9, 9, 9, 2, 3, 8, 36.00, 24.00, 12.00, 4.00, 4),
(12, 11, 10, 10, 10, 1, 1, 9, 160.00, 100.00, 60.00, 20.00, 2),
(13, 12, 11, 11, 11, 3, 2, 10, 70.00, 50.00, 20.00, 10.00, 1),
(14, 13, 12, 12, 12, 2, 3, 11, 25.00, 15.00, 10.00, 3.00, 5),
(15, 14, 13, 13, 13, 1, 1, 12, 1300.00, 900.00, 400.00, 100.00, 1),
(16, 15, 14, 14, 14, 3, 2, 13, 600.00, 400.00, 200.00, 50.00, 2),
(17, 16, 15, 15, 15, 2, 3, 14, 10.00, 6.00, 4.00, 1.00, 10),
(18, 17, 16, 16, 16, 1, 1, 15, 899.00, 650.00, 249.00, 75.00, 1),
(19, 18, 17, 17, 17, 3, 2, 16, 250.00, 180.00, 70.00, 20.00, 2),
(20, 19, 18, 18, 18, 2, 3, 17, 9.00, 6.00, 3.00, 1.00, 15),
(21, 20, 19, 19, 19, 1, 1, 18, 499.00, 350.00, 149.00, 50.00, 1),
(22, 21, 20, 20, 20, 3, 2, 19, 150.00, 100.00, 50.00, 20.00, 2),
(23, 22, 21, 21, 21, 2, 3, 20, 24.00, 16.00, 8.00, 2.00, 3),
(24, 23, 22, 22, 22, 1, 1, 21, 199.00, 140.00, 59.00, 25.00, 1),
(25, 24, 23, 23, 23, 3, 2, 22, 600.00, 400.00, 200.00, 50.00, 2),
(26, 25, 24, 24, 24, 2, 3, 23, 40.00, 25.00, 15.00, 5.00, 4),
(27, 26, 25, 25, 25, 1, 1, 24, 150.00, 100.00, 50.00, 20.00, 1),
(28, 27, 26, 26, 26, 3, 2, 25, 180.00, 120.00, 60.00, 30.00, 2),
(29, 28, 27, 27, 27, 2, 3, 26, 18.00, 12.00, 6.00, 2.00, 6),
(30, 29, 28, 28, 28, 1, 1, 27, 85.00, 60.00, 25.00, 10.00, 1),
(31, 30, 29, 29, 29, 3, 2, 28, 450.00, 300.00, 150.00, 50.00, 2),
(32, 31, 30, 30, 30, 2, 3, 29, 30.00, 20.00, 10.00, 5.00, 3),
(33, 32, 31, 31, 31, 1, 1, 30, 120.00, 80.00, 40.00, 15.00, 1),
(34, 33, 32, 32, 32, 3, 2, 31, 40.00, 25.00, 15.00, 5.00, 2),
(35, 34, 33, 33, 33, 2, 3, 32, 14.00, 9.00, 5.00, 2.00, 4);


/*Views*/
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
