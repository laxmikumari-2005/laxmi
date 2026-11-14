/*FORMAT*/
--example
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime,'MM-dd-YYYY') USA_Format,
FORMAT(CreationTime,'dd-mm-yyyy') Euro_Format,
FORMAT(CreationTime,'dd') dd,
FORMAT(CreationTime,'ddd') ddd,
FORMAT(CreationTime,'dddd') dddd,
FORMAT(CreationTime,'mm') mm,
FORMAT(CreationTime,'mmm') mmm,
FORMAT(CreationTime,'mmmm') mmmm
FROM Sales.Orders

--Show CreationTime using the following format:Day Wed Jan Q1 2025 12:34:56 PM
SELECT
OrderID,
CreationTime,
'Day' + FORMAT(CreationTime,'ddd-MMM')+
'Q'+ DATENAME(quarter,CreationTime)+' '+
FORMAT(CreationTime,'yyyy hh:mm:ss tt') AS CustomeFormat
FROM Sales.Orders

--format use case data aggregation
SELECT
FORMAT(OrderDate,'MMM yy') OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(orderDate,'MMM yy')

--CONVERT()
SELECT
CONVERT(INT,'123') AS [String to INT CONVERT],
CONVERT(DATE,'2025-08-20') AS [String to Date Convert],
CreationTime,
CONVERT(DATE,CreationTime) AS [Datetime to Date CONVERT]
FROM Sales.Orders

--CAST()
SELECT
CAST('123'AS INT) AS [String to Int],
CAST(123 AS VARCHAR) AS [INT to String],
CAST('2025-08-20' AS DATE) AS [string to Datetinme],
CAST('2025-08-20' AS DATETIME2) AS [String to Datetime],
CreationTime,
CAST(CreationTime AS DATE) AS [Datetime to date]
FROM Sales.Orders

