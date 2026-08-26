USE sql_store;
-- give customers born before 1990, 50 extra points
UPDATE customers
SET points = points + 50 
WHERE birth_date < '1990-01-01';

USE sql_invoicing;
-- UPDATING MULTIPLE COLUMNS
UPDATE invoices
SET
	payment_total = invoice_total,
    payment_date = due_date
WHERE client_id IN 
				( SELECT client_id
					FROM clients
                    WHERE state IN ( 'CA', 'NY'));

-- EXCERCISE: update comment for customer haivng more than 3000pts
UPDATE orders
SET comments = 'GOLD'
WHERE customer_id IN 
				(SELECT customer_id
				FROM customers
                WHERE points > 3000);
			
-- DELETE ROWS
USE sql_invoicing;
DELETE FROM invoices
WHERE invoice_id IN (1,3,5);

DELETE FROM invoices
WHERE client_id IN ( SELECT * 
					 FROM clients
                     WHERE name = 'Myworks'); 