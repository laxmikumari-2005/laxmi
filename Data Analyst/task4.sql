CREATE DATABASE northwind_db;
USE northwind_db;
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
); 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category_id INT,
    price DECIMAL(10,2),

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(150),
    segment VARCHAR(50),
    region VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    sales DECIMAL(10,2),
    quantity INT,
    profit DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);
SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.customer_name,
    c.segment,
    c.region,
    o.sales,
    o.quantity,
    o.profit
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;


SELECT COUNT(*) AS total_orders
FROM orders;
SELECT COUNT(*) AS joined_orders
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;
    
    SELECT
    c.customer_id,
    c.customer_name,
    c.segment,
    c.region
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


SELECT
    p.product_id,
    p.product_name,
    SUM(o.sales) AS total_revenue,
    SUM(o.quantity) AS total_quantity_sold
FROM orders o
INNER JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC;

SELECT
    p.product_id,
    p.product_name,
    SUM(o.sales) AS total_revenue
FROM orders o
INNER JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT
    p.product_id,
    p.product_name,
    SUM(o.sales) AS total_revenue
FROM orders o
INNER JOIN products p
    ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(o.sales) > 50000
ORDER BY total_revenue DESC;

SELECT
    SUM(sales) AS total_order_revenue
FROM orders;
SELECT
    SUM(total_revenue) AS summed_product_revenue
FROM (
    SELECT p.product_id, SUM(o.sales) AS total_revenue
    FROM orders o
    INNER JOIN products p
        ON o.product_id = p.product_id
    GROUP BY p.product_id
) t;


SELECT
    c.category_id,
    c.category_name,
    SUM(o.sales) AS total_revenue
FROM categories c
INNER JOIN products p
    ON c.category_id = p.category_id
INNER JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    c.category_id,
    c.category_name
ORDER BY total_revenue DESC;

SELECT
    c.category_name,
    SUM(o.sales) AS category_revenue,
    ROUND(
        SUM(o.sales) * 100.0 / 
        (SELECT SUM(sales) FROM orders),
        2
    ) AS revenue_percentage
FROM categories c
JOIN products p
    ON c.category_id = p.category_id
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY c.category_name
ORDER BY category_revenue DESC;

SELECT
    c.region,
    SUM(o.sales) AS total_sales
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.region = 'West'
  AND o.order_date BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY c.region;

SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    c.region,
    o.sales,
    o.quantity,
    o.profit
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.region = 'West'
  AND o.order_date BETWEEN '2023-01-01' AND '2023-06-30'
ORDER BY o.order_date;

SELECT
    c.region,
    cat.category_name,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN products p
    ON o.product_id = p.product_id
JOIN categories cat
    ON p.category_id = cat.category_id
WHERE c.region = 'East'
  AND cat.category_name = 'Technology'
  AND o.order_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY c.region, cat.category_name;

SELECT
    c.region,
    COUNT(o.order_id) AS order_count,
    SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
WHERE o.sales > 5000
GROUP BY c.region;

SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    c.region,
    o.sales,
    o.quantity
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id;

SELECT
    p.product_id,
    p.product_name,
    SUM(o.sales) AS total_revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC;


SELECT
    c.region,
    SUM(o.sales) AS total_sales
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
WHERE c.region = 'West'
  AND o.order_date BETWEEN '2023-01-01' AND '2023-06-30'
GROUP BY c.region;

SELECT
    cat.category_name,
    SUM(o.sales) AS category_revenue
FROM orders AS o
JOIN products AS p
    ON o.product_id = p.product_id
JOIN categories AS cat
    ON p.category_id = cat.category_id
GROUP BY cat.category_name
ORDER BY category_revenue DESC;

SELECT
    c.customer_id,
    c.customer_name,
    c.region
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
