CREATE DATABASE SuperMarketsale;

CREATE TABLE Productsale(
InvoiceID Int,
City Varchar(15),
Customer Varchar(15),
UnitPrice Int,
Quantity Int,
TotalPrice Int,
PaymentType Varchar(15),
GrossMargin Int,
GrossIncome Int,
Rating Int);

-- alter cammand
alter table Productsale
add Gender varchar(10);

alter table Productsale
drop column GrossMargin;

alter table Productsale
add constraint PK_ID primary key
(InvoiceID);

-- Data Manupulation
insert into Productsale (InvoiceID, City, Customer, UnitPrice, Quantity, TotalPrice, PaymentType, GrossIncome, Rating, Gender)
values (2629,'Mumbai','Suresh',26.87,8,2645,'Ewallet',58.65,9.1,'M'),
(8569,'Pune','Komal',23.54,9,65542,'Cash',86.23,8.6,'F'),
(9762,'Nashik','Neha',45.12,8,65423,'Credit',45.21,9.5,'F'),
(1789,'Mumbai','Rahul',85.63,6,78845,'Cash',91.3,9.8,'M'),
(2658,'Pune','Ajit',96.45,6,64666,'Credit',86.23,9.9,'M'),
(9685,'Mumbai','Mukund',45.25,6,66564,'Cash',75.63,5.6,'M'),
(7562,'Nashik','Rani',65.45,12,454564,'Credit',98.23,9.9,'F'),
(9654,'Mumbai','Tarak',85.12,10,56666,'Cash',85.36,9.2,'M'),
(3545,'Pune','Ajay',85.23,8,444546,'Credit',85.75,9.6,'M'),
(6269,'Mumbai','Suraj',75.23,6,544466,'Cash',85.96,9.1,'M');

update Productsale
Set Customer = 'Rakhi'
where InvoiceID = 9762;

select * from Productsale;

select City, Customer, Quantity
from Productsale
where Gender = 'M';

select * from Productsale;

-- Filter by City
SELECT * FROM Productsale WHERE City = 'Mumbai';

-- Filter by PaymentType
SELECT * FROM Productsale WHERE PaymentType = 'Cash';

-- Filter by Gender and City
SELECT * FROM Productsale WHERE Gender = 'F' AND City = 'Pune';

-- Order by TotalPrice in Descending Order
SELECT * FROM Productsale ORDER BY TotalPrice DESC;

-- Order by Rating in Ascending Order
SELECT * FROM Productsale ORDER BY Rating ASC;

-- Calculate the Average Rating
SELECT AVG(Rating) AS AverageRating FROM Productsale;

-- Count the Number of Records for a Specific City
SELECT COUNT(*) FROM Productsale WHERE City = 'Nashik';

-- Find the Highest GrossIncome
SELECT MAX(GrossIncome) AS HighestGrossIncome FROM Productsale;

-- Sum of TotalPrice for all Sales
SELECT SUM(TotalPrice) AS TotalSales FROM Productsale;

-- Find Records with Rating Greater Than 9.0
SELECT * FROM Productsale WHERE Rating > 9.0;

-- Group by City and Calculate Total Sales in Each City
SELECT City, SUM(TotalPrice) AS TotalSales FROM Productsale GROUP BY City;

-- Count the Number of Sales by PaymentType
SELECT PaymentType, COUNT(*) AS PaymentCount FROM Productsale GROUP BY PaymentType;

-- Calculate the Average GrossIncome by Gender
SELECT Gender, AVG(GrossIncome) AS AverageIncome FROM Productsale GROUP BY Gender;

-- Find Customers Who Made Sales with a TotalPrice Above 50,000
SELECT Customer, TotalPrice FROM Productsale WHERE TotalPrice > 50000;

-- Select All Records where Quantity is Greater Than 8
SELECT * FROM Productsale WHERE Quantity > 8;

-- Find the Minimum UnitPrice
SELECT MIN(UnitPrice) AS MinimumUnitPrice FROM Productsale;

-- Filter Records by PaymentType and City
SELECT * FROM Productsale WHERE PaymentType = 'Credit' AND City = 'Pune';




















