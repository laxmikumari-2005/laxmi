/*ADVANCED JOIN TYPE*/
/*Using Sales DB , Retrieve a list of all orders , along with the related customer, product, and employee details.
--For  each order,display:
-OrderId
-Customer's name
-product name
-sales amount
-product price
-salesperson`s name*/
USE SalesDB

SELECT
   o.OrderID,
   o.Sales,
   c.FirstName AS customerFirstName,
   c.LastName AS customerLastName,
   p.Product AS ProductName,
   p.Price,
   e.FirstName AS EmployeeFirstName,
   e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.customers AS c
ON o.CustomerID=c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID=p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID=e.EmployeeID


