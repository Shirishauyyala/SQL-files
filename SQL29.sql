CREATE TABLE SALESPEOPLE(
    SNUM INT PRIMARY KEY,
    SNAME CHAR(20),
    CITY CHAR(20),
    COMM DECIMAL(8,3)
);

INSERT INTO 
   SALESPEOPLE (SNUM, SNAME,CITY,COMM)
VALUES
    (101, "Peel", "London", 0.12),
    (102, "Serres", "San Jose" , 1.13),
    (103, "Motika", "London", 0.11),
    (104,"Rafkin", "Barcelona", 0.15),
    (105, "Axelrod", "New York", 0.1);

CREATE TABLE CUSTOMERS (
    CNUM INT PRIMARY KEY,
    CNAME CHAR(20),
    CITY CHAR(20),
    RATING INT,
    SNUM INT
 );
 
 INSERT INTO 
   CUSTOMERS (CNUM, CNAME, CITY, RATING, SNUM)
VALUES
   ( 201, "Hoffman", "London", 100, 101),
   ( 202, "Giovanne", "Rome", 200, 103),
   (203, "Liu", "San Jose", 300, 102),
   (204, "Grass", "Brelin", 100, 102),
   (205, "Clemens", "London", 300, 105),
   (206, "Pereia", "Rome", 100, 104)
   ;
   
CREATE TABLE ORDERS (
    ONUM INT PRIMARY KEY,
    AMT NUMERIC(9,4),
    ODATE DATE,
    CNUM INT,
    SNUM INT
);

INSERT INTO 
   ORDERS (ONUM, AMT, ODATE, CNUM, SNUM)
VALUES 
   ( 301, 18.69, "1994-07-03", 206, 104),
   ( 302, 767.19, "1994-07-03", 201, 101),
   ( 303, 1900.10, "1994-07-04", 204, 104),
   ( 304, 5160.45, "1994-07-04", 202, 102),
   ( 305, 1098.16, "1994-07-05", 203, 103),
   ( 306, 75.75, "1994-07-02", 206, 103),
   ( 307, 4723.69, "1994-07-06", 205, 105);
   
SELECT 
CNAME ,SNAME
FROM CUSTOMERS ,SALESPEOPLE
WHERE 
CUSTOMERS.SNUM=SALESPEOPLE.SNUM;
