USE sql_store;
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' 
OR points >=2000 ;

SELECT * FROM customers WHERE birth_date > '1990-01-01' AND points <= 1000;

SELECT * FROM customers WHERE  state NOT IN ( 'FL', 'VA');

SELECT * FROM customers WHERE points between 1000 and 3000; 

SELECT * FROM customers WHERE birth_date between 1990-01-01 and 2000-01-01;
SELECT * FROM customers WHERE first_name LIKE 'b%';
SELECT * FROM customers WHERE first_name LIKE 'b____y';

SELECT * FROM customers WHERE address LIKE '%trail%' OR address LIKE '%avenue%' ;
SELECT * FROM customers WHERE  phone NOT LIKE '%9' ;

-- identical to each other ;
SELECT * FROM customers WHERE  last_name LIKE '%field%' ; 
SELECT * FROM customers WHERE  last_name REGEXP 'field' ;

SELECT * FROM customers WHERE last_name REGEXP 'field|mac|rose' ; -- words with field/rose/mac

SELECT * FROM customers WHERE last_name REGEXP '^field|mac|rose' ; -- words starting with field/rose/mac
SELECT * FROM customers WHERE last_name REGEXP 'field$|mac|rose' ; -- words ending with field OR starting with rose/mac

-- words with e at lastname
SELECT * FROM customers 
WHERE last_name REGEXP 'e' ;
-- words with [g/i/m] before 'e'
SELECT * FROM customers 
WHERE last_name REGEXP '[gim]e' ;

SELECT * FROM customers 
ORDER BY first_name, last_name; 

SELECT first_name, last_name, 10 AS points 
FROM customers 
ORDER BY 1,2 ;  -- you should avoid if u add column names before firs_name






