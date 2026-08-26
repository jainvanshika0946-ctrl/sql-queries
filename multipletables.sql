SELECT * FROM sql_invoicing.clients;

SELECT client_id, invoice_id, date, amount, payment_method
FROM clients c
JOIN payments
	ON c.client_id = p.payments
JOIN invoices
	ON c.client_id = i.client_id;