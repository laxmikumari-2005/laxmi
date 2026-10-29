# 🗄️ SQL Journey

A hands-on collection of T-SQL scripts written while learning relational databases with **Microsoft SQL Server**. Each file focuses on one concept, from creating tables to joins and set operators.

**Tools:** SQL Server, SSMS (SQL Server Management Studio)

---

## 📑 Table of Contents
- [Repository Structure](#-repository-structure)
- [Concepts Covered](#-concepts-covered)
- [Sample Schema](#-sample-schema)
- [Highlights](#-highlights)
- [How to Run](#️-how-to-run)
- [Key Learnings](#-key-learnings)
- [What's Next](#-whats-next)

---

## 📂 Repository Structure

| File | Category | What it covers |
|---|---|---|
| `DDL.sql` | DDL | Create `persons` table with primary key, `ALTER TABLE` to add a column |
| `DDL2.sql` | DDL | SSMS auto-generated script of `persons` (GO batches, index options) |
| `DML.sql` | DML | `INSERT`, `INSERT ... SELECT`, `UPDATE`, `DELETE`, `TRUNCATE` |
| `SELECT Queries.sql` | Querying | `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING`, `DISTINCT`, `TOP` |
| `WHEREcondition.sql` | Filtering | Comparison operators, `AND` / `OR`, `BETWEEN`, `IN` |
| `BasicJoin1.sql` | Joins | `INNER`, `LEFT`, `RIGHT`, `FULL JOIN` on customers and orders |
| `Advance Join1.sql` | Joins | Anti-joins (unmatched rows), `FULL JOIN` with `NULL` checks, `CROSS JOIN` |
| `AdvanceJoin2.sql` | Joins | Multi-table join on **SalesDB**: orders + customers + products + employees |
| `SET OPERATORS.sql` | Set operators | `UNION`, `UNION ALL`, `EXCEPT`, `INTERSECT`, combining `Orders` and `OrdersArchive` |
| `revisonQueries.sql` | Revision | Quick recap: create `student` table, insert rows, drop column, add primary key |

---

## 🧠 Concepts Covered

1. **DDL**: `CREATE TABLE`, `ALTER TABLE ... ADD / DROP COLUMN`, `ADD CONSTRAINT`, primary keys
2. **DML**: `INSERT`, `UPDATE`, `DELETE`, `TRUNCATE`
3. **Querying**: column selection, aliases (`AS`), static values
4. **Filtering**: `WHERE` with `=`, `!=`, `>`, `<`, `AND`, `OR`, `BETWEEN`, `IS NULL`
5. **Sorting**: `ORDER BY` with `ASC` / `DESC`, multi-column sorting
6. **Aggregation**: `SUM`, `AVG`, `COUNT`, `GROUP BY`, `HAVING`
7. **Result shaping**: `DISTINCT`, `TOP`
8. **Joins**: `INNER`, `LEFT`, `RIGHT`, `FULL`, `CROSS`, anti-joins, multi-table joins
9. **Set operators**: `UNION`, `UNION ALL`, `EXCEPT`, `INTERSECT`
10. **Constraints**: `NOT NULL`, `PRIMARY KEY`

---

## 🧱 Sample Schema

```sql
-- MyDatabase (practice files)
customers(id, first_name, country, score)
orders(order_id, customer_id, order_date, sales)
persons(id, person_name, birth_date, phone [, email])
student(id, student_name, roll, department_name)

-- SalesDB (AdvanceJoin2.sql, SET OPERATORS.sql)
Sales.Orders, Sales.OrdersArchive, Sales.Customers, Sales.Products, Sales.Employees
```

---

## ✨ Highlights

**Top 3 customers by score**
```sql
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;
```

**Average score per country (excluding zeros)**
```sql
SELECT country, AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;
```

**Customers who never placed an order (anti-join)**
```sql
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
  ON c.id = o.customer_id
WHERE o.customer_id IS NULL;
```

**Employees who are also customers**
```sql
SELECT FirstName, LastName FROM Sales.Employees
INTERSECT
SELECT FirstName, LastName FROM Sales.Customers;
```

---

## 🔁 SQL Execution Order

```
FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → TOP
```

---

## ▶️ How to Run

1. Install **SQL Server** and **SSMS**.
2. Create a database:
   ```sql
   CREATE DATABASE MyDatabase;
   ```
3. Open any `.sql` file in SSMS, make sure `USE MyDatabase` is at the top, and press **F5**.
4. Suggested order:
   `DDL.sql` → `DML.sql` → `SELECT Queries.sql` → `WHEREcondition.sql` → `BasicJoin1.sql` → `Advance Join1.sql` → `SET OPERATORS.sql` → `revisonQueries.sql`

> ⚠️ Scripts use T-SQL syntax (`TOP`, `GO`, `[brackets]`). Some commands are commented out to avoid accidental re-runs. The `customers` and `orders` tables must exist before running DML, SELECT and join files. `AdvanceJoin2.sql` and `SET OPERATORS.sql` need the **SalesDB** sample database.

---

## 💡 Key Learnings

- `WHERE` filters rows before grouping; `HAVING` filters groups after aggregation.
- Every non-aggregated column in `SELECT` must appear in `GROUP BY`.
- `NULL` can't be compared with `=`; use `IS NULL`.
- `DELETE` removes rows (filterable); `TRUNCATE` clears the whole table.
- Adding a `NOT NULL` column to a table with existing rows needs a `DEFAULT`.
- `LEFT JOIN ... WHERE right.key IS NULL` finds unmatched rows.
- `UNION` removes duplicates; `UNION ALL` keeps them (and is faster).
- Set operators need the same number of columns with compatible types.
- Test a `WHERE` with `SELECT` before running `UPDATE` or `DELETE`.

---

## 🚀 What's Next

- [x] Joins (INNER, LEFT, RIGHT, FULL, CROSS)
- [x] Set operators (UNION, INTERSECT, EXCEPT)
- [ ] String and date functions
- [ ] `CASE` statements and window functions
- [ ] Subqueries and CTEs
- [ ] Views, stored procedures and indexes
- [ ] Mini analytics project on a real dataset
