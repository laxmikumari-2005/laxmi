# SQL JOURNEY
🗄️ My SQL Journey

A hands-on collection of SQL scripts written while learning the fundamentals of relational databases with Microsoft SQL Server (T-SQL). Each file focuses on one core concept, from creating tables to filtering, sorting and aggregating data.

TOOLS 
SSMS - SQL server management studio

📑 Table of Contents
Repository Structure
Concepts Covered
Sample Schema
Highlights
How to Run
Key Learnings
What's Next

📂 Repository Structure
File	Category	What it covers
DDL.sql	DDL	Create persons table with a primary key, add a column using ALTER TABLE
DDL2.sql	DDL	Auto-generated (SSMS) script of the persons table, with GO batches and index options
DML.sql	DML	INSERT, INSERT ... SELECT, UPDATE, DELETE, TRUNCATE
SELECT_Queries.sql	Querying	SELECT, WHERE, ORDER BY, GROUP BY, HAVING, DISTINCT, TOP
WHEREcondition.sql	Filtering	Comparison operators and AND / OR logic
revisonQueries.sql	Revision	Quick recap: create student table, insert rows, drop column, add primary key

🧠 Concepts Covered

1.DDL (Data Definition Language): CREATE TABLE, ALTER TABLE ... ADD / DROP COLUMN, ADD CONSTRAINT, primary keys

2.DML (Data Manipulation Language): INSERT, UPDATE, DELETE, TRUNCATE

3.Querying: SELECT, column selection, aliases (AS), static values

4.Filtering: WHERE with =, !=, >, <, AND, OR, IS NULL

5.Sorting: ORDER BY with ASC / DESC, multi-column sorting

6.Aggregation: SUM, AVG, COUNT, GROUP BY, HAVING

Result shaping: DISTINCT, TOP

Data constraints: NOT NULL, PRIMARY KEY

🧱 Sample Schema
sql
-- customers (used across the query practice files)
customers(id, first_name, country, score)

-- orders
orders(..., order_date)

-- persons
persons(id, person_name, birth_date, phone [, email])

-- student
student(id, student_name, roll, department_name)
✨ Highlights

Top 3 customers by score

sql
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

Average score per country (excluding zeros), filtered and sorted

sql
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;

Copy data from one table into another
sql
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT id, first_name, NULL, 'Unknown'
FROM customers;

🔁 SQL Execution Order (the "aha" moment)
FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → TOP

▶️ How to Run
Install SQL Server and SQL Server Management Studio (SSMS).
Create a database:
sql
   CREATE DATABASE MyDatabase;
Open any .sql file in SSMS.
Make sure USE MyDatabase is at the top, then run with F5.
Run files in this order for best results: DDL.sql → DML.sql → SELECT_Queries.sql → WHEREcondition.sql → revisonQueries.sql.

⚠️ Scripts use T-SQL syntax (TOP, GO, [brackets]). Some commands are commented out so they aren't re-run accidentally. customers and orders tables must exist before running the DML and SELECT files.

💡 Key Learnings
WHERE filters rows before grouping; HAVING filters groups after aggregation.
Every non-aggregated column in SELECT must appear in GROUP BY.
NULL can't be compared with =; use IS NULL.
DELETE removes rows (filterable), while TRUNCATE clears the whole table.
Adding a NOT NULL column to a table that already has rows needs a DEFAULT value.
Always test a WHERE with a SELECT before running UPDATE or DELETE.

🚀 What's Next
 JOINs (INNER, LEFT, RIGHT, FULL)
 Set operators (UNION, INTERSECT, EXCEPT)
 String and date functions
 CASE statements and window functions
 Subqueries and CTEs
 Views, stored procedures and indexes
 A mini analytics project on a real dataset

