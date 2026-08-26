SELECT name,
unit_price,
unit_price * 1.1 AS new_price FROM products;

-- excercise regex operator
SELECT * FROM customers 
WHERE first_name REGEXP 'elka|ambur' ;

SELECT * FROM customers 
WHERE last_name REGEXP 'ey$|on$' ;

SELECT * FROM customers 
WHERE last_name REGEXP '^my|se' ;
SELECT * FROM customers 
WHERE last_name REGEXP 'b[ru]' ; -- br|bu


-- orders not shipped yet
SELECT * FROM orders 
WHERE shipped_date IS NULL ;

-- order by clause
SELECT * , quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2 
ORDER BY total_price DESC ;

-- top 3 loyal customers
SELECT * FROM customers
ORDER BY points DESC LIMIT 3;

-- inner joins method
SELECT order_id, o.product_id, quantity, p.unit_price 
FROM order_items o
JOIN products p 
	ON o.product_id = p.product_id ;

