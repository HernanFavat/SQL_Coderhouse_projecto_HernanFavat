# SQL_Coderhouse_projecto_HernanFavat

CREATE DATABASE pipeline_management_spain2;

USE pipeline_management_spain2;

CREATE TABLE dim_users (
    userid INT NOT NULL AUTO_INCREMENT,
    u__email VARCHAR(255),
    first_name VARCHAR(50) DEFAULT 'User_Name',
    last_name VARCHAR(50) DEFAULT 'User_LastName',
    u__createddate DATE DEFAULT (CURDATE()),
    isactive BOOLEAN NOT NULL DEFAULT TRUE,
    u__type VARCHAR(50),
    PRIMARY KEY (userid)
);

INSERT INTO dim_users (u__email, first_name, last_name, u__createddate, isactive, u__type)
VALUES
    ('john@management.com', 'John', 'Doe', '2023-01-01', 1, 'Reseller'),
    ('marta_gomez@management.com', 'Marta', 'Gomez', '2023-07-01', 2, 'Sales Rep'),
    ('fer_rodriguez@management.com', 'Fernando', 'Rodriguez', '2023-12-01', 1, 'Manager');


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
    ('123 Industries', '123789', 'United Kingdom', 3, '2023-07-25');


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
    (1, 1, 'Xaiomi and Dell products USA customer', 'Won','2024-02-12', '2023-04-10', 1,  'USD'), 
    (2, 2, 'Phillips and GM - special discount', 'Won', '2024-02-12','2023-04-10', 2,  'USD'), 
    (3, 3, 'Fashion closthing different size', 'Won', '2024-02-12', '2023-04-10', 3,  'USD');


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
    ('P1234', 'Xaiomi phone L2', 'Electronics', 899.99, 1),
    ('P5678', 'Friedge GM', 'Home Appliances', 399.50, 2),
    ('P91011', 'Sara Jeans', 'Clothing XXL', 49.99, 3),
    ('P13234', 'Computer Dell', 'Electronics', 750, 1),
    ('P4378', 'Blender Phillips', 'Home Appliances', 5000, 2),
    ('P94511', 'Desigual Sweater', 'Clothing XXS', 1500, 3);


SELECT 
    U.userid, 
    A.a__name AS "Account Name", 
    A.a__country AS "Account Country", 
    CONCAT(U.first_name, ' ', U.last_name) AS "Full Name", 
    O.opportunityid,
    O.o__name AS "Opportunity Name", 
    SUM(P.product__price) AS "Opportunity Value",
    O.currencycode,
    o.o__closeddate,
    o.o__statusname
FROM 
    dim_users U
JOIN 
    facts_account A ON A.primary_contactid = U.userid
JOIN 
    facts_opportunities O ON O.accountid = A.accountid
JOIN 
    facts_products P ON P.opportunityid = O.opportunityid
GROUP BY 
    O.opportunityid;

UPDATE facts_opportunities
SET o__statusname = 'Won' 
WHERE O__closeddate > (CURDATE()); 

