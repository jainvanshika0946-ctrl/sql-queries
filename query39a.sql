-- OUTER JOIN B/W MANY TABLES
SELECT c.customer_id , c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
JOIN shippers s 
	ON s.shipper_id = o.shipper_id  -- using inner join
ORDER BY c.customer_id ;

-- here some orders like customer_id =8 doenot have shipper id (ie null) thus they dont showup
-- we use left join for this purpose

SELECT c.customer_id , c.first_name, o.order_id, s.name AS shipper
FROM customers c
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers s 
	ON s.shipper_id = o.shipper_id  -- using LEFTOUTER join
ORDER BY c.customer_id ;

