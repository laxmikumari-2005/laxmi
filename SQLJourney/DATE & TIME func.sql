/*DATE , TIME function*/
--Example 1
SELECT
OrderID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
From Sales.Orders

--DatePart example
SELECT
OrderID,
CreationTime,
DATEPART(year,CreationTime) Year_dp,
DATEPART(month,CreationTime) month_dp,
DATEPART(day,CreationTime) day_dp,
DATEPART(hour,CreationTime) hour_dp,
DATEPART(quarter,CreationTime) quarter_dp,
DATEPART(week,CreationTime) week_dp,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders

--DATENAME
SELECT
OrderID,
CreationTime,
DATENAME(month,CreationTime) Month_dn,
DATENAME(weekday,CreationTime) weekday_dn,
DATENAME(day,CreationTime) day_dn,
DATENAME(year,CreationTime) year_dn
FROM Sales.Orders

--DATETrunc
SELECT
OrderID,
CreationTime,
DATETRUNC(year,CreationTime)Year_dt,
DATETRUNC(day,CreationTime)day_dt,
DATETRUNC(minute,CreationTime) minute_dt
FROM Sales.Orders

/*E0MONTH (End of the month)*/
SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfmonth
FROM Sales.Orders
--start of the month example
SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfMonth,
CAST(DATETRUNC(month,CreationTime) AS DATE) StartOfMonth
FROM Sales.Orders

/*DATA aggregation*/

--How many orders were placed each year?
SELECT
YEAR(OrderDate),
COUNT(*) NrOfOrdrers
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

--how moany orders were placed each month?
SELECT
DATENAME(month,OrderDate) AS OrderDate,
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate)

/*Data Filtering*/
--show all orders that were placed during the month of february
SELECT
*
FROM Sales.Orders
WHERE MONTH(OrderDate)=2

