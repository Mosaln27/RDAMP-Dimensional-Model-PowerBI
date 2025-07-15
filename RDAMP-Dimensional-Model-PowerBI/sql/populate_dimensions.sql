GO
USE AceSuperstoreDB;

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

