/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 06, Sam Fratantonio */

SELECT AVG(line_item_amount) FROM ap.invoice_line_items;
SELECT AVG(line_item_amount) FROM ap.invoice_line_items GROUP BY account_number;
SELECT MIN(invoice_date), MAX(payment_date) FROM ap.invoices GROUP BY vendor_id;
SELECT MIN(invoice_total), MAX(invoice_total), AVG(invoice_total) FROM ap.invoices;
SELECT SUM(invoice_total) FROM ap.invoices GROUP BY vendor_id;