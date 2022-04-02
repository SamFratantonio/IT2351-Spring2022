/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 01, Sam Fratantonio */

SELECT * FROM ap.vendors; 
SELECT * FROM ap.vendors LIMIT 5;
SELECT vendor_contact_last_name, vendor_contact_first_name, vendor_name, vendor_phone FROM ap.vendors; 
SELECT invoice_number, invoice_date, invoice_total FROM ap.invoices;
SELECT vendor_name, vendor_address1, vendor_address2, vendor_city, vendor_state, vendor_zip_code from ap.vendors;
SELECT * FROM ap.invoices WHERE invoice_total < 200 ORDER BY invoice_total DESC;
SELECT * FROM ap.vendors WHERE vendor_state IN ('OH', 'WI');
SELECT * FROM ap.vendors WHERE vendor_zip_code = 93721;
SELECT line_item_description, line_item_amount, (line_item_amount * .07) AS tax_amount FROM ap.invoice_line_items;
SELECT x.invoice_number, x.amt_due 
FROM (SELECT invoice_number, (invoice_total - payment_total - credit_total) AS amt_due FROM ap.invoices) AS x
WHERE x.amt_due > 0;