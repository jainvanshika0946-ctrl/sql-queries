USE sql_store;
INSERT INTO customers 
VALUES (default, 'john','smith','1990-01-01',NULL, 'Adrees','city','ca',default);


-- inserting into specific columns
INSERT INTO customers (first_name,
						last_name, 
                        birth_date, 
                        address, 
                        city, 
                        state)
			VALUES ('BETY', 'smithr','1994-03-23', 'sddresss','cityy','mp');
            
            
 -- inserting multiple rows in one col
INSERT INTO shippers (name)
VALUES ( 'p1'),
		('p2'),
        ('p3');
        
        
-- EXCERCISE ON INSERTING MULTIPLE ROWS IN PRODUCTS TABLE

INSERT INTO products (name,quantity_in_stock,unit_price)
VALUES ( 'product1',1,1.0),
		('product2',2,2.0),
        ('product3',3,3.0);
        
-- INSERTING HIERARCHICAL ROWS
INSERT INTO orders( customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1 , 2.95),
		(LAST_INSERT_ID(), 2, 1 , 3.95);
