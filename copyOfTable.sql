USE sql_store;
-- creating a copy of a table
CREATE TABLE order_archive AS
SELECT * FROM orders;

INSERT INTO order_archive
SELECT * 
FROM orders
WHERE order_date > '2019-01-01';

-- excercise to copy invoices table into invoices_archive:
-- use clientname instead of client_id,payment_date should not be NULL
USE sql_invoicing;
CREATE TABLE invoices_archive AS

SELECT invoice_id, number, c.name AS client, invoice_total, 
		payment_total, invoice_date, due_date,payment_date
FROM invoices i 
JOIN clients c
	ON c.client_id = i.client_id -- can use the USING clause here
WHERE payment_date IS NOT NULL;