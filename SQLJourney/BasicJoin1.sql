/* Retrieve all data from customers and orders in two different results*/
SELECT * FROM customers;

SELECT * FROM orders;

/*INNER JOIN*/
--get all customers along with their orders,but only for customers who have placed an order
SELECT * FROM customers
INNER JOIN orders
ON id=customer_id

--ANOTHER method
SELECT c.id,c.first_name,o.order_id,o.sales
FROM orders AS o
INNER JOIN customers AS c
ON c.id=o.customer_id

/*LEFT JOIN*/
--get all customers along with their orders , including those without orders
SELECT
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id=o.customer_id

/*RIGHT JOIN*/
--get all customers along with their orders,including orders without matching customers

SELECT c.id,c.first_name,o.order_id,o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id

/*TASK 1*/
--Get all customers along with their orders, including orders without matching customers(using LEFT JOIN)
SELECT c.id,c.first_name,o.order_id,o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id=o.customer_id

/*FULL JOIN*/
--get all customers and all orders, even if there`s no match
SELECT c.id,c.first_name,o.order_id,o.sales
FROM orders AS o
FULL JOIN customers AS c
ON c.id=o.customer_id







