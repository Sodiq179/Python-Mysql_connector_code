SHOW DATABASES;
## Creating ABC Supermarket Database
CREATE DATABASE ABC_Supermarket_Database;
USE ABC_Supermarket_Database;

## Creating different tables in the database
SHOW TABLES;
CREATE TABLE Customer(
		CustomerID VARCHAR(8) NOT NULL,
        CustomerName VARCHAR(30),
        EMail VARCHAR(30),
        Age INTEGER,
        Gender VARCHAR(1),
        DateJoined DATE,
        PRIMARY KEY(CustomerID)
);

CREATE TABLE Sales(
	CustomerID VARCHAR(8),
    PurchasedItemID VARCHAR(8),
    QuantityPurchased INTEGER,
    PurchaseDate DATE,
    PurchaseTime TIME    
);

CREATE TABLE Product(
	ProductID VARCHAR(8),
    ProductName VARCHAR(20),
    ProductUnitPrice DECIMAL,
    PRIMARY KEY(ProductID)
);

CREATE TABLE Inventory(
	ProductID VARCHAR(8),
    StartingInventory INTEGER,
    InventoryReceived INTEGER,
    InventoryOnHand INTEGER
);


## INSERTING VALUES INTO THE TABLES
INSERT INTO Customer
VALUES ('HHS003', 'Adewale Obisesan', 'Adewale@example.com', 35, 'M','2020-10-11'), ('HHS015', 'Ogundiran Isreal', 'Ogundiran@example.com', 41, 'M','2018-01-14'),
('HHS045', 'Obianke Emmanuel','Obianke@example.com', 27, 'M','2019-09-22'), ('HHS033', 'Adeshola Saheed', 'Adeshola@example.com', 30,'M','2019-08-12'),
('HHS057', 'Babawale Sodiq', 'Babawale@example.com', 32,'M','2018-12-03'), ('HHS021', 'Badmus Habeeb', 'Badmusn@example.com', 28, 'M','2020-09-16'),
('HHS009', 'Ibirogba Adesanya', 'Ibirogba@example.com', 29, 'F','2020-10-17'), ('HHS011', 'Ogunshina Micheal', 'Ogunshina@example.com', 35,'F','2019-05-14'),
('HHS042', 'Udoka Ukechukwu', 'Udoka@example.com', 38, 'F','2019-11-24');

INSERT INTO Product
VALUES ('ITM001', 'Milo', 4500),('ITM002', 'Sugar', 2000),
('ITM003', 'Lipton Tea', 2500),('ITM004', 'Bournvita', 4000),('ITM005', 'Milk', 3500);

INSERT INTO Inventory
VALUES ('ITM001',900, 100, 56 ),('ITM002', 950, 300, 96),
('ITM003', 600, 280, 13),('ITM004', 600, 100, 34),('ITM005', 500, 0 , 20);

INSERT INTO Sales
VALUES ('HHS003', 'ITM001', 7, '2020-10-11','13:56'),('HHS003', 'ITM003', 5, '2020-10-11','13:56'),('HHS003', 'ITM005', 8, '2020-12-05','10:09'), ('HHS015', 'ITM002', 3, '2020-12-05','11:36'),
('HHS003', 'ITM003', 8, '2020-12-05','11:36'),('HHS045', 'ITM001', 8, '2020-09-11','13:56'), ('HHS033','ITM002', 8, '2020-10-11','13:56'),('HHS011', 'ITM003', 9, '2020-06-09','09:56'),
('HHS057', 'ITM003', 4, '2020-07-11','09:56'), ('HHS021', 'ITM004', 3, '2020-07-11','12:40'),('HHS009', 'ITM005', 8, '2020-07-11','14:06'), ('HHS011', 'ITM002', 9, '2020-06-09','09:56'),
('HHS042','ITM002', 6, '2020-06-12','12:12'),('HHS057', 'ITM001', 4, '2020-07-11','09:56'), ('HHS021', 'ITM003', 3, '2020-07-11','12:40'),('HHS009', 'ITM001', 8, '2020-07-11','14:06'), 
('HHS042','ITM003', 6, '2020-06-12','12:12');