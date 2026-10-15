--RETRIEVE all cutomers from germany
SELECT *
FROM customers
WHERE country ='Germany'

--retrieve all customers who are not from germany
SELECT *
FROM customers
WHERE country!='Germany'

--retrieve all customers with score greater than 500
SELECT *
FROM customers
WHERE score>500

--retrieve all customers with a score less than 500
SELECT *
FROM customers
WHERE score<500




--retrieve all customers who are from USA and have a score greater than 500
Select * 
From customers
Where country='USA' AND score>500


--retrieve all customers who are from USA or have a score greater than 500
SELECT * 
FROM customers 
Where country='USA' OR score>500

--retrieve all customers whose score falls in the range between 100 and 500
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

--retrieve all customers from either GERMANY or USA
SELECT *
FROM customers
WHERE country IN ('Germany','USA')

--Find all customers whose first name starts with 'M'
SELECT * 
FROM customers
WHERE first_name LIKE 'M%'

--retrieve all customers whose first name ends with 'n'
SELECT * FROM customers
WHERE first_name LIKE '%n'

--retrieve all customers whose first name contains 'r'
SELECT * FROM customers
WHERE first_name LIKE '%r%'

--find all customers whose first name has 'r' in the 3rd position 
SELECT * FROM customers
WHERE first_name LIKE '__r%'