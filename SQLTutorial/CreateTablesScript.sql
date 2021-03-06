Create table Customers
(
	CustomerID int primary key identity(1,1),
	Name varchar(200) NOT NULL,
	Age Int NOT NULL,
	Address Varchar(500) NULL,
	Salary money
)
GO

Insert Into Customers
Values ('Ramesh', 32,'Ahmedabad',2000.00 ),
('Khilan', 25,'Delhi',1500.00 ),
('kaushik', 23,'Kota',2000.00 ),
('Chaitali', 25,'Mumbai',6500.00 ),
('Hardik', 27,'Bhopal',8500.00 ),
('Komal', 22,'MP',4500.00 ),
('Muffy', 24,'Indore',10000.00 ),
('Krish', 37,'Goa',null ),
('Katty', 56,'Goa',9000.00 ),
('Om', 34,null, null ),
('Jiya', 64, null,4500.00 )
GO


Create table Orders
(
OID INT PRIMARY KEY IDENTITY(1,1),
ORDERDATE DATETIME,
CUSTOMERID INT FOREIGN KEY REFERENCES CUSTOMERS(CustomerID),
AMOUNT MONEY
)
GO


Insert Into Orders
Values ('2017-01-01', 1, 100),
('2017-01-12', 2, 455),
('2017-01-15', 3, 233),
('2017-01-23', 4, 456),
('2017-01-20', 5, 5676),
('2017-01-18', 4, 6565),
('2017-01-01', 2, 2323),
('2017-01-12', 3, 1212),
('2017-01-15', 5, 4512),
('2017-01-23', 6, 235),
('2017-01-20', 7, 678),
('2017-03-18', 1, 874),
('2017-04-01', 2, 453),
('2017-02-12', 3, 787),
('2017-05-15', 3, 987),
('2017-06-23', 5, 986),
('2017-06-20', 5, 100),
('2017-01-18', 7, 121),
('2017-02-01', 2, 100),
('2017-02-12', 1, 544),
('2017-03-15', 1, 232),
('2017-04-23', 4, 100),
('2017-01-20', 5, 787),
('2017-02-18', 6, 909),
('2017-03-01', 6, 455),
('2017-04-12', 7, 121),
('2017-05-15', 3, 7777),
('2017-06-23', 3, 3456),
('2017-06-20', 2, 100),
('2017-05-18', 5, 8989),
('2017-04-01', 4, 2342),
('2017-03-12', 6, 8909),
('2017-02-15', 7, 7877),
('2017-01-23', 7, 3434),
('2017-05-20', 1, 8989),
('2017-03-18', 8, 9089),
('2017-06-23', 8, 3456),
('2017-06-20', 9, 100),
('2017-05-18', 9, 8989),
('2017-04-01', 10, 2342),
('2017-03-12', 10, 8909),
('2017-02-15', 10, 7877),
('2017-01-23', 10, 3434)
GO


Create Table Salesman
(
	SalesmanID int primary key identity(1,1),
	Name varchar(200) NOT NULL,
	Address Varchar(500),
	Commission money NULL
)
GO

Alter Table Salesman
Add CustomerID INT FOREIGN KEY REFERENCES CUSTOMERS(CustomerID)
GO

Insert the following data into the table :

SalesmanID	Name	Address	Commission
1	James Hoog	Paris	5.00
2	Nail Knite	London	2.50
3	Pit Alex	New York	4.00
4	Mac Lyon	Mumbai	3.02
5	Lauson 	Rome	1.05
6	Paul Adam	Rome	2.25

Insert Into Salesman
Values ('James Hoog', 'Paris',5 ),
('Nail Knite','London',2.50 ),
('Pit Alex','New York',4 ),
('Mac Lyon', 'Mumbai',3.02 ),
('Lauson ','Rome',1.05 ),
('Paul Adam','Rome', 2.25 )
GO



Update Orders
Set SalesmanID = 6 Where CUSTOMERID = 6