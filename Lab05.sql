/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 05, Sam Fratantonio */
SET SQL_SAFE_UPDATES = 0;
INSERT INTO om.items VALUES (11,"A Musical Masterpiece","Al Dente",14.95);
INSERT INTO om.items VALUES (12,"The Sounds of 2351","	Anna Graham",22.95);
INSERT INTO om.items VALUES (13,"Chill Database","Tim Burr",16.95);
INSERT INTO om.items VALUES (14,"Recording of Records","Barry Cade",14.95);
UPDATE om.items SET unit_price=16.00 WHERE unit_price=16.95;
UPDATE om.items SET title="No Primary Key" WHERE item_id=6;
DELETE FROM om.order_details WHERE order_id=19;
DELETE FROM om.orders WHERE order_id=19;
