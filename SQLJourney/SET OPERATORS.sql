/*SET OPERATORS*/
--combine the data from employees and customers into one table
--UNION
SELECT
FirstName,
LastName
FROM sales.Employees
UNION
SELECT
FirstName,
LastName
FROM Sales.Customers

--combine the data from employees and customers into one table,including duplicates
--UNION ALL
SELECT 
FirstName,
LastName
FROM Sales.Employees
UNION ALL
SELECT
FirstName,
LastName
FROM Sales.Customers


--EXCEPT
--Find the employees who are not customers at the same time
SELECT
FirstName,
LastName
FROM sales.Employees
EXCEPT
SELECT
FirstName,
LastName
FROM Sales.Customers

--INTERSECT
--Find the employees who are also customers
SELECT
FirstName,
LastName
FROM Sales.Employees
INTERSECT
SELECT
FirstName,
LastName
FROM Sales.Customers

--COMBINE INFORMATION
--orders are stored in separate tables(0rders and OrdersArchive).combine all orders into one report without duplicates
SELECT  TOP (1000) [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
SELECT TOP (1000) [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
 FROM Sales.OrdersArchive