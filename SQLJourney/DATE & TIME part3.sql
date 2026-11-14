--DateADD example
SELECT
OrderID,
OrderDate,
DATEADD(day,-10,OrderDate) AS TenDayBefore,
DATEADD(month,3,OrderDate) AS ThreeMonthsLater,
DATEADD(year,2,OrderDate) AS TwoYearsLater
FROM Sales.Orders

--Calculate the age of employees
SELECT
EmployeeID,
BirthDate,
DATEDIFF(year,BirthDate,GETDATE()) Age
FROM Sales.Employees

--Find the average shipping duration in days for each month
SELECT
OrderID,
OrderDate,
ShipDate
FROM Sales.Orders

--OR
SELECT
MONTH(OrderDate) AS OrderDate,
AVG(DATEDIFF(day,OrderDate,ShipDate)) AvgShip
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--Time Gap Analysis
--Find the no. of days between each order and the previous order

SELECT
OrderID,
OrderDate CurrentOrderDate,
LAG(OrderDate) OVER(ORDER BY OrderDate) PreviousOrderDate,
DATEDIFF(day,LAG(OrderDate) OVER(ORDER BY OrderDate),OrderDate) NrOfDays
FROM sales.Orders


--ISDATE
SELECT 
ISDATE('123') DateCheck1,
ISDATE('2025-08-20') DateCheck2,
ISDATE('20-08-2025') DateCheck3,
ISDATE('2025') DateCheck4,
ISDATE('08') DateCheck5

