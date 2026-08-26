SELECT * FROM sql_store.orders;

-- orders not shipped yet
SELECT * FROM orders 
WHERE shipped_date IS NULL ;

SELECT * FROM customers ORDER BY state ;
SELECT * FROM customers ORDER BY state DESC, first_name DESC ;

-- JOINING MULTIPLE TABLES
SELECT o.order_id, o.order_date, c.first_name, c.last_name, 
os.name 
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id 