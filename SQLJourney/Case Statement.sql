/*create report showing total sales for each of the following categories :
high (sales over 50) ,medium (sales 21-50), and low (sales 20 or less)
sort the categories from highest sales to lowest*/

SELECT
Category,
SUM(Sales) AS TotalSales
FROM(
   SELECT
   OrderID,
   Sales,
   CASE
       WHEN Sales>50 THEN 'High'
       WHEN Sales>20 THEN 'Medium'
       ELSE 'Low'
    END Category
    FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC

--retrieve employee details with gender displayed as full text
SELECT
EmployeeID,
FirstName,
LastName,
Gender,
CASE
   WHEN Gender ='F' THEN 'Female'
   WHEN Gender ='M' THEN 'Male'
   ELSE 'Not Available'
END GenderFullText
FROM Sales.Employees

--retrieve country details with abbreviated country code
SELECT
  CustomerID,
  FirstName,
  LastName,
  Country,
  CASE 
     WHEN Country='Germany' THEN 'DE'
     WHEN Country='USA' THEN 'US'
     ELSE 'n/a'
 END CountryAbbr
FROM Sales.Customers;

--find the average scores of customers and treat nulls as 0
--additionally provide details such customerId and LastName
SELECT
CustomerID,
LastName,
Score,
CASE 
   WHEN Score IS NULL THEN 0
   ELSE Score

END ScoreClean,
AVG(Score) OVER() AvgCustomer
FROM Sales.Customers

--count how many times each customer has made an order with sales greater than 30
SELECT
CustomerID,
  SUM(CASE
     WHEN Sales>30 THEN 1
     ELSE 0
    END) TotalOrderHighSales,
    COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID





