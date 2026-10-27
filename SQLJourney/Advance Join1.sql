/*ADVANCED JOIN*/
--get all the customers who haven't place any order

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NULL

--Get all orders without matching customers
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NULL

--Find customers without orders and orders without customers

SELECT *
FROM orders AS o 
FULL JOIN customers AS c 
ON c.id=o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL


--get all customers along with their orders, but only for customers who have placed an order(without using inner join)

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NOT NULL

--Generate all possible combinations of customers and orders
SELECT * 
FROM customers 
CROSS JOIN orders