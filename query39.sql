SELECT * FROM sql_store.orders;
-- excercise OUTER JOIN B/W MANY TABLES
SELECT 
o.order_date,
o.order_id,
c.first_name,
sh.name AS shipper,
os.name AS status
FROM orderS o 
LEFT JOIN shippers sh 
	ON sh.shipper_id = o.shipper_id
LEFT JOIN order_statuses os
	ON os.order_status_id = o.status
LEFT JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY o.status