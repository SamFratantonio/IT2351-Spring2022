/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 03, Sam Fratantonio */
SELECT * FROM om.customers WHERE customer_last_name LIKE 'D%';
SELECT CONCAT(customer_address, ' ', customer_city, ' ', customer_state, ' ', customer_zip) FROM om.customers;
SELECT unit_price, (unit_price * 0.10) AS discount FROM om.items;
SELECT DISTINCT unit_price FROM om.items;
SELECT * FROM om.orders LIMIT 10;
SELECT order_date, shipped_date, (order_date - shipped_date) FROM om.orders;
SELECT DAYOFWEEK(shipped_date) AS d FROM om.orders ORDER BY d; 
SELECT item_id, title, ROUND(unit_price, 0) FROM om.items;
SELECT * FROM om.items ORDER BY artist, unit_price;
SELECT * FROM om.customers WHERE customer_fax="NULL"; 