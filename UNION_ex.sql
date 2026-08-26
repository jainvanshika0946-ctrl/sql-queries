-- union
-- two different queries of same table
SELECT 
	order_id, 
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id, 
    order_date,
    'ARCHIVED' AS status
FROM orders
WHERE order_date < '2019-01-01' ;

-- union from DIFFERENT tables
SELECT first_name
FROM customers
UNION 
SELECT name
FROM shippers;

-- EXCERCISE
SELECT * FROM sql_store.customers;
USE sql_store;
-- EX: unions in same table
SELECT customer_id,
		first_name,
        points,
        'GOLD' AS type
FROM customers 
WHERE points >= 3000
 union
SELECT customer_id,
		first_name,
        points,
        'SILVER' AS type
FROM customers 
WHERE points BETWEEN 1000 AND 3000
 union
SELECT customer_id,
		first_name,
        points,
        'BRONZE' AS type
FROM customers 
WHERE points <= 1000
order by first_name;
 
