DROP DATABASE pipeline_management_spain2;

CREATE DATABASE pipeline_management_spain2;
USE pipeline_management_spain2;

CREATE TABLE dim_users (
    userid INT NOT NULL AUTO_INCREMENT,
    u__email VARCHAR(255),
    first_name VARCHAR(50) DEFAULT 'User_Name',
    last_name VARCHAR(50) DEFAULT 'User_LastName',
    u__createddate DATE DEFAULT (CURDATE()),
    isactive BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY (userid)
);

INSERT INTO dim_users (u__email, first_name, last_name, u__createddate, isactive)
VALUES
    ('john@management.com', 'John', 'Doe', '2023-01-01', 1),
    ('marta_gomez@management.com', 'Marta', 'Gomez', '2023-07-01', 1),
    ('fer_rodriguez@management.com', 'Fernando', 'Rodriguez', '2023-12-01', 1),
    ('emma@management.com', 'Emma', 'Johnson', '2023-03-20', 1),
    ('david_wong@management.com', 'David', 'Wong', '2023-04-25', 1),
    ('laura_smith@management.com', 'Laura', 'Smith', '2023-05-30', 1),
    ('alex@management.com', 'Alex', 'Martinez', '2023-06-05', 1),
    ('jessica@management.com', 'Jessica', 'Brown', '2023-07-10', 1),
    ('michael@management.com', 'Michael', 'Davis', '2023-08-15', 1),
    ('sophia@management.com', 'Sophia', 'Wilson', '2023-09-20', 1),
    ('adam@management.com', 'Adam', 'Anderson', '2023-10-25', 1),
    ('olivia@management.com', 'Olivia', 'Taylor', '2023-11-30', 1),
    ('william@management.com', 'William', 'Thomas', '2023-12-05', 1),
    ('emily@management.com', 'Emily', 'Harris', '2024-01-10', 1),
    ('james@management.com', 'James', 'Walker', '2024-02-15', 1),
    ('ava@management.com', 'Ava', 'White', '2024-03-20', 1),
    ('benjamin@management.com', 'Benjamin', 'Jackson', '2024-04-25', 1),
    ('harper@management.com', 'Harper', 'Moore', '2024-05-30', 1),
    ('emma@management.com', 'Emma', 'Martinez', '2024-06-05', 1),
    ('logan@management.com', 'Logan', 'Lee', '2024-07-10', 1),
    ('grace@management.com', 'Grace', 'Perez', '2024-08-15', 1),
    ('noah@management.com', 'Noah', 'Gonzalez', '2024-09-20', 1),
    ('chloe@management.com', 'Chloe', 'Rodriguez', '2024-10-25', 1);

CREATE TABLE facts_account (
    accountid INT NOT NULL AUTO_INCREMENT,
    a__name VARCHAR(255) DEFAULT 'NAME',
    a__number VARCHAR(50) DEFAULT '5324534_NB',
    a__country VARCHAR(50) DEFAULT 'Uruguay',
    primary_contactid INT NOT NULL,
    a__createddate DATE DEFAULT (CURDATE()),
    PRIMARY KEY (accountid),
    FOREIGN KEY (primary_contactid) REFERENCES dim_users(userid)
);

INSERT INTO facts_account (a__name, a__number, a__country, primary_contactid, a__createddate)
VALUES
    ('ABC Corporation', 'ABC123', 'United States', 1, '2023-05-15'),
    ('XYZ Enterprises', 'XYZ456', 'Canada', 2, '2023-06-20'),
    ('123 Industries', '123789', 'United Kingdom', 3, '2023-07-25'),
	('PQR Solutions', 'PQR123', 'India', 4, '2023-11-15'),
    ('LMN Tech', 'LMN789', 'Japan', 5, '2023-12-20'),
    ('XYZ Innovations', 'XYZ789', 'South Korea', 6, '2024-01-25'),
    ('ABC Tech', 'ABC123', 'China', 7, '2024-02-10'),
    ('EFG Innovations', 'EFG456', 'Singapore', 8, '2024-03-15'),
    ('GHI Solutions', 'GHI789', 'Australia', 9, '2024-04-20'),
    ('JKL Tech', 'JKL123', 'New Zealand', 10, '2024-05-25'),
    ('MNO Innovations', 'MNO456', 'Taiwan', 11, '2024-06-10'),
    ('RST Solutions', 'RST789', 'Philippines', 12, '2024-07-15'),
    ('UVW Tech', 'UVW123', 'Thailand', 13, '2024-08-20'),
    ('QRS Innovations', 'QRS456', 'Malaysia', 14, '2024-09-25'),
    ('TUV Solutions', 'TUV789', 'Vietnam', 15, '2024-10-10'),
    ('WXY Tech', 'WXY123', 'Indonesia', 16, '2024-11-15'),
    ('ZAB Innovations', 'ZAB456', 'Myanmar', 17, '2024-12-20'),
    ('CDE Tech', 'CDE789', 'Cambodia', 18, '2025-01-25'),
    ('FGH Innovations', 'FGH123', 'Laos', 19, '2025-02-10'),
    ('IJK Solutions', 'IJK456', 'Bangladesh', 20, '2025-03-15'),
    ('LMN Tech', 'LMN789', 'Nepal', 21, '2025-04-20'),
    ('OPQ Innovations', 'OPQ123', 'Pakistan', 22, '2025-05-25');
  
    
CREATE TABLE facts_opportunities (
    opportunityid INT NOT NULL AUTO_INCREMENT,
    accountid INT,
    ownerid INT,
    o__name VARCHAR(150) DEFAULT 'Opportunity_name',
    o__statusname VARCHAR(50) DEFAULT 'Stages',
    o__closeddate DATE DEFAULT (CURDATE()),
    o__createddate DATE DEFAULT (CURDATE()),
    o_amount DECIMAL(10,2) DEFAULT 650000,
    productid INT, -- Remove NOT NULL constraint
    currencycode VARCHAR(10) DEFAULT 'USD',
    PRIMARY KEY (opportunityid),
    FOREIGN KEY (ownerid) REFERENCES dim_users(userid),
    FOREIGN KEY (accountid) REFERENCES facts_account(accountid)
);

INSERT INTO facts_opportunities (ownerid, accountid, o__name, o__statusname, o__closeddate, o__createddate, productid, currencycode)
VALUES
    (1, 1, 'Xaiomi and Dell products USA customer', 'Won', '2024-02-12', '2023-04-10', 1, 'USD'), 
    (2, 2, 'Phillips and GM - special discount', 'Won', '2024-02-12', '2023-04-10', 2, 'USD'), 
    (3, 3, 'Fashion closthing different size', 'Won', '2024-02-12', '2023-04-10', 3, 'USD'),
    (4, 1, 'Software Development Project', 'Open', '2025-05-15', '2024-01-10', 4, 'INR'), 
    (5, 2, 'Tech Consultation Service', 'Won', '2025-05-15', '2024-02-15', 5, 'JPY'), 
    (6, 3, 'Hardware Upgrade Contract', 'Lost', NULL, '2024-03-20', 6, 'KRW'),
    (7, 1, 'Cloud Services Implementation', 'Open', '2025-05-15', '2024-04-25', 7, 'CNY'), 
    (8, 2, 'AI Integration Project', 'Won', '2025-05-15', '2024-05-30', 8, 'SGD'), 
    (9, 3, 'Digital Marketing Campaign', 'Open', NULL, '2024-06-05', 9, 'AUD'),
    (10, 1, 'E-commerce Platform Development', 'Lost', '2025-05-15', '2024-07-10', 10, 'NZD'),
    (11, 2, 'IoT Solutions Implementation', 'Open', '2025-05-15', '2024-08-15', 11, 'TWD'), 
    (12, 3, 'Network Infrastructure Upgrade', 'Won', '2025-05-15', '2024-08-15', 12, 'THB'),
    (13, 1, 'Mobile App Development', 'Open', NULL, '2024-07-15', 13, 'PHP'),
    (14, 2, 'Web Development Project', 'Open', NULL, '2024-03-15', 14, 'SGD'), 
    (15, 3, 'Database Optimization', 'Open', NULL, '2024-08-15', 15, 'AUD');
    
    
CREATE TABLE facts_products (
    productid INT NOT NULL AUTO_INCREMENT,
    product__code VARCHAR(50),
    product__name VARCHAR(50),
    product__type VARCHAR(50),
    serial__number VARCHAR(150) DEFAULT 'JFSADFA_5345_4267',
    product__price DECIMAL(10,2) DEFAULT 450,
    currencycode VARCHAR(10) DEFAULT 'USD',
    opportunityid INT NOT NULL,
    PRIMARY KEY (productid),
    FOREIGN KEY (opportunityid) REFERENCES facts_opportunities(opportunityid)
);


INSERT INTO facts_products (product__code, product__name, product__type, product__price, opportunityid)
VALUES
	('P162738', 'Smartwatch Y3', 'Electronics', 349.99, 1),
    ('P192021', 'Refrigerator Samsung', 'Home Appliances', 899.99, 2),
    ('P222324', 'Levi Jeans', 'Clothing XL', 59.99, 3),
    ('P252627', 'Laptop HP', 'Electronics', 899.99, 1),
    ('P282930', 'Toaster KitchenAid', 'Home Appliances', 13500, 2),
    ('P313233', 'Nike Hoodie', 'Clothing L', 79.99, 3),
    ('P343536', 'Tablet Apple', 'Electronics', 699.99, 1),
    ('P373839', 'Coffee Maker Nespresso', 'Home Appliances', 299.99, 2),
    ('P404142', 'Adidas Sneakers', 'Footwear', 129.99, 3),
    ('P434445', 'Smart TV Sony', 'Electronics', 1499.99, 1),
    ('P464748', 'Microwave Panasonic', 'Home Appliances', 149.99, 2),
    ('P495051', 'Puma Joggers', 'Clothing M', 39.99, 3),
    ('P525354', 'Digital Camera Canon', 'Electronics', 599.99, 1),
    ('P555657', 'Air Fryer Philips', 'Home Appliances', 249.99, 2),
    ('P585960', 'Leather Jacket', 'Clothing S', 119.99, 3),
    ('P616263', 'Bluetooth Speaker JBL', 'Electronics', 199.99, 1),
    ('P646566', 'Vacuum Cleaner Dyson', 'Home Appliances', 399.99, 2),
    ('P676869', 'Summer Dress', 'Clothing XS', 29.99, 3),
    ('P707172', 'Wireless Headphones Sony', 'Electronics', 299.99, 1),
    ('P737475', 'Rice Cooker Zojirushi', 'Home Appliances', 129.99, 2);
    
CREATE TABLE sales_target_achieved_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sales_rep VARCHAR(255),
    total_value DECIMAL(10, 2),
    currencycode VARCHAR(10) DEFAULT 'USD',
    achieved_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE VIEW opportunity_summary AS
SELECT 
    U.userid, 
    A.a__name AS account_name, 
    A.a__country AS account_country, 
    CONCAT(U.first_name, ' ', U.last_name) AS full_name, 
    O.opportunityid,
    O.o__name AS opportunity_name, 
    SUM(P.product__price) AS opportunity_value,
    O.currencycode,
    O.o__closeddate,
    O.o__statusname
FROM dim_users U
JOIN facts_account A ON A.primary_contactid = U.userid
JOIN facts_opportunities O ON O.accountid = A.accountid
JOIN facts_products P ON P.opportunityid = O.opportunityid
GROUP BY O.opportunityid;

CREATE VIEW top_sales_reps AS
SELECT 
    CONCAT(U.first_name, ' ', U.last_name) AS sales_rep_name, 
    SUM(P.product__price) AS total_opportunity_value
FROM dim_users U
JOIN facts_opportunities O ON O.ownerid = U.userid
JOIN facts_products P ON P.opportunityid = O.opportunityid
WHERE O.o__statusname = 'Won'
GROUP BY U.userid
ORDER BY total_opportunity_value DESC
LIMIT 5;

CREATE VIEW account_value_distribution AS
SELECT 
    A.a__name AS account_name, 
    SUM(P.product__price) AS total_opportunity_value
FROM facts_account A
JOIN facts_opportunities O ON O.accountid = A.accountid
JOIN facts_products P ON P.opportunityid = O.opportunityid
GROUP BY A.accountid
ORDER BY total_opportunity_value DESC;

CREATE VIEW opportunity_status_breakdown AS
SELECT 
    O.o__statusname AS status, 
    COUNT(*) AS count
FROM facts_opportunities O
GROUP BY O.o__statusname;

CREATE VIEW product_performance AS
SELECT 
    product__type AS product_type, 
    SUM(product__price) AS total_revenue
FROM facts_products
GROUP BY product__type
ORDER BY total_revenue DESC;

DELIMITER //
CREATE PROCEDURE UpdateOpportunityStatus()
BEGIN
    UPDATE facts_opportunities
    SET o__statusname = 
        CASE 
            WHEN o__closeddate > DATE_ADD(CURDATE(), INTERVAL 30 DAY) THEN 'Lost'
            ELSE o__statusname
        END;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetAccountValueDistribution()
BEGIN
    CREATE TEMPORARY TABLE temp_account_value_distribution (
        account_name VARCHAR(255),
        total_opportunity_value DECIMAL(10, 2)
    );

    INSERT INTO temp_account_value_distribution
    SELECT 
        A.a__name AS account_name, 
        SUM(P.product__price) AS total_opportunity_value
    FROM facts_account A
    JOIN facts_opportunities O ON O.accountid = A.accountid
    JOIN facts_products P ON P.opportunityid = O.opportunityid
    GROUP BY A.accountid
    ORDER BY total_opportunity_value DESC;

    SELECT * FROM temp_account_value_distribution;

    DROP TEMPORARY TABLE IF EXISTS temp_account_value_distribution;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetMostSoldProductsBySalesRep()
BEGIN
    SELECT 
        CONCAT(U.first_name, ' ', U.last_name) AS sales_rep_name,
        P.product__name AS product_name,
        COUNT(*) AS total_sold,
        SUM(P.product__price) AS total_value
    FROM dim_users U
    JOIN facts_opportunities O ON O.ownerid = U.userid
    JOIN facts_products P ON P.opportunityid = O.opportunityid
    WHERE O.o__statusname = 'Won'
    GROUP BY U.userid, P.product__name
    ORDER BY total_sold DESC;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS CheckSalesTarget;
DELIMITER //

CREATE TRIGGER CheckSalesTarget
AFTER INSERT ON facts_opportunities
FOR EACH ROW
BEGIN
    DECLARE total_value DECIMAL(10, 2);
    DECLARE sales_rep_name VARCHAR(255);
    
    -- Fetch the total value of products associated with the opportunity
    SELECT 
        CONCAT(U.first_name, ' ', U.last_name) AS sales_rep_name,
        SUM(P.product__price) INTO sales_rep_name, total_value
    FROM dim_users U
    JOIN facts_opportunities O ON O.ownerid = U.userid
    JOIN facts_products P ON P.opportunityid = O.opportunityid
    WHERE O.opportunityid = NEW.opportunityid AND O.o__statusname = 'Won'
    GROUP BY U.userid;
    
    -- Check if the total value exceeds $1300
    IF total_value >= 1300 THEN
        -- Perform confirmation action here, such as logging or notification
        INSERT INTO sales_target_achieved_log (id, sales_rep, total_value, achieved_at)
        VALUES (id, sales_rep_name, total_value, NOW());
    END IF;
END//

DELIMITER ;

CALL UpdateOpportunityStatus();
CALL GetAccountValueDistribution();
CALL GetMostSoldProductsBySalesRep(); 

SELECT 
    O.opportunityid,
    CONCAT(U.first_name, ' ', U.last_name) AS sales_rep_name,
    SUM(P.product__price) AS total_value
FROM dim_users U
JOIN facts_opportunities O ON O.ownerid = U.userid
JOIN facts_products P ON P.opportunityid = O.opportunityid
WHERE O.o__statusname = 'Won'
GROUP BY O.opportunityid, U.first_name, U.last_name
HAVING SUM(P.product__price) > 1300;

SELECT * from sales_target_achieved_log; 
