---#1
--Select all column for all customers
SELECT *
FROM dbo.Customers

--#2
--All customers living in london
SElECT *
FROM dbo.Customers
WHERE City IN ('London', 'Paris')

--#3
--List of all unique cities whithout nulls
SELECT DISTINCT City
FROM dbo.Customers
WHERE City IS NOT NULL

--#4
--Show a sorted employee list of first name
SELECT FirstName [First Name]
FROM dbo.Employees
ORDER BY FirstName --Default is ascending order

SELECT FirstName [First Name]
FROM dbo.Employees
ORDER BY FirstName DESC --sort by descending order

--#5
--Find the average of employees salary
--No table with salaries found

--#6
--No table with salaries found


--#7
--Employees with a BA
SELECT *
FROM dbo.Employees
WHERE Notes LIKE '% BA %' 

--#8
--Total for each order
SELECT 
	O.OrderID AS [Order No.],
	O.UnitPrice * O.Quantity - O.Discount AS [Order Total]
FROM [Order Details] AS O

--#9
--Employees hired between 1/1/1994 and now
SELECT *
FROM dbo.Employees
WHERE HireDate BETWEEN '1994-01-01' AND GETDATE()


--#10
--Find how long employees are working with northwind in years
SELECT 
	EmployeeID AS [Emp No.],
	FirstName + ' ' + LastName AS [Name],
	DATEDIFF(year, HireDate, GETDATE()) AS [Years Employed]
FROM dbo.Employees

--#11
--List of all products sorted by quantity
SELECT *
FROM dbo.Products
ORDER BY UnitsInStock DESC

SELECT *
FROM dbo.Products
ORDER BY UnitsInStock ASC -- Default is ascending order

--#12
--Find products that are low
SELECT *
FROM dbo.Products
WHERE UnitsInStock < 6

--#13
--List of discontinued products

SELECT *
FROM dbo.Products
WHERE Discontinued = 1

--#14
--Products containing tofu
SELECT *
FROM dbo.Products
WHERE ProductName LIKE '%ToFu%'

--#15
--Highest unit price product

SELECT TOP (1) *
FROM dbo.Products
ORDER BY UnitPrice DESC

--#16
--List of all employees hired after 1993-1-1

SELECT * 
FROM dbo.Employees
WHERE HireDate > '1993-01-01'

--#17
--Get all employee who has title Ms. and Mrs.

SElECT * 
FROM dbo.Employees
WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.')

--#18
--All employee who has home phone with area code 206

SELECT *
FROM dbo.Employees
WHERE HomePhone LIKE '(206)%'

