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

