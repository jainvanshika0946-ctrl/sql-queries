USE sql_invoicing;
-- USING CLAUSE
-- EX: joining payments, slients, payment methods tables
SELECT 
		p.date,
		c.name as client,
		p.amount,
        pm.name AS name
FROM payments p
JOIN clients c 	
	USING (client_id)
JOIN payment_methods pm 
	ON p.payment_id = pm.payment_method_id