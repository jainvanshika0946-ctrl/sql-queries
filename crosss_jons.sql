-- CROSS JOINS
-- implicit cross join
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, orders o 
ORDER BY c.first_name ; 

USE sql_store ;
SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s , products p 
ORDER BY s.name;


 -- explicit cross join
SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s
CROSS JOIN products p
ORDER BY s.name ;
