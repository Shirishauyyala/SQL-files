-- Create a new database named TABLESALESPEOPLE
CREATE DATABASE TABLESALESPEOPLE;

-- Create a table for salespeople details
CREATE TABLE SALESPEOPLE(
    SNUM INT PRIMARY KEY,       -- Unique identifier for each salesperson
    SNAME CHAR(20),             -- Name of the salesperson
    CITY CHAR(20),              -- City where the salesperson is based
    COMM DECIMAL(8,3)           -- Commission rate of the salesperson
);

INSERT INTO 
   SALESPEOPLE (SNUM, SNAME, CITY, COMM)
VALUES
    (101, "Peel", "London", 0.12),        
    (102, "Serres", "San Jose", 1.13),    
    (103, "Motika", "London", 0.11),      
    (104, "Rafkin", "Barcelona", 0.15),   
    (105, "Axelrod", "New York", 0.1);    

-- Create a table for customer details
CREATE TABLE CUSTOMERS (
    CNUM INT PRIMARY KEY,       -- Unique identifier for each customer
    CNAME CHAR(20),             -- Name of the customer
    CITY CHAR(20),              -- City where the customer resides
    RATING INT                  -- Customer rating
);

-- Insert records into the CUSTOMERS table
INSERT INTO 
    CUSTOMERS (CNUM, CNAME, CITY, RATING)
VALUES
    (2001, "Hoffman", "London", 100),    
    (2002, "Giovanni", "Rome", 200),     
    (2003, "Liu", "San Jose", 300),      
    (2004, "Grass", "Berlin", 400),      
    (2005, "Clemens", "London", 500);    

-- Create a table for order details
CREATE TABLE ORDERS (
    ONUM INT PRIMARY KEY,       -- Unique identifier for each order
    AMOUNT DECIMAL(12,2),       -- Amount of the order
    ODATE DATE,                 -- Date the order was placed
    CNUM INT,                   -- Customer number associated with the order
    SNUM INT,                   -- Salesperson number who handled the order
    FOREIGN KEY (CNUM) REFERENCES CUSTOMERS(CNUM), -- Link to CUSTOMERS table
    FOREIGN KEY (SNUM) REFERENCES SALESPEOPLE(SNUM) -- Link to SALESPEOPLE table
);

-- Insert records into the ORDERS table
INSERT INTO 
    ORDERS (ONUM, AMOUNT, ODATE, CNUM, SNUM)
VALUES
    (3001, 18.69, "2024-01-01", 2008, 103), 
    (3002, 1900.10, "2024-01-02", 2007, 104),
    (3003, 767.19, "2024-01-03", 2001, 105),
    (3004, 5160.45, "2024-01-04", 2003, 102),
    ( 3005, 1098.16, "1994-07-05", 203, 103),
   ( 3006, 75.75, "1994-07-02", 206, 103),
   ( 3007, 4723.69, "1994-07-06", 205, 105);

-- Display snum, sname, city and comm of all salespeople.
SELECT  
  SNUM, SNAME, CITY, COMM 
FROM 
  SALESPEOPLE;
    
    