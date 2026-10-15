

/*INSERT*/
INSERT INTO customers (id,first_name,country,score)
Values
    (8,'Annie','UK',Null),
    (9 ,'Sam',NULL,10)
SELECT * FROM customers

--Insert data from 'customers' into 'persons'
/*INSERT INTO persons (id,person_name,birth_date,phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM persons*/

/*UPDATE*/
--change the score of customer 6 to 0
/*UPDATE customers
SET score=0
WHERE id=6*/

SELECT *
FROM customers

--change the score of customer 10 to 0 and update the country to UK
UPDATE customers
SET score=0,
   country='USA'
WHERE id=10

SELECT * 
FROM customers

--update all customers with a null score by setting their score to 0
/*UPDATE customers
SET score=0
WHERE score IS NULL

SELECT *
FROM customers
WHERE score IS NULL*/

/*DELETE*/
--delete all customers with an ID greater than 5
DELETE FROM customers
WHERE id>5

SELECT * FROM customers WHERE id>5

--delete all data from persons table
/*TRUNCATE TABLE person*/