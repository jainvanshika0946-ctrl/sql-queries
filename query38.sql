USE sql_store;
-- JOIN order_items table with order_item_notes
SELECT * 
FROM order_items oi
JOIN order_item_notes oin 
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id