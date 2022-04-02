/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 08, Sam Fratantonio */

SELECT concat_ws(': ', vendor_name, vendor_phone) FROM ap.vendors;
SELECT concat_ws(', ', vendor_contact_last_name, vendor_contact_first_name) FROM ap.vendors;
SELECT LEFT(vendor_phone, 5) AS Area_Code FROM ap.vendors;
SELECT payment_date, invoice_date, IF((payment_date - invoice_date) > 0, "Please Pay", "False") FROM ap.invoices;
SELECT DATE_FORMAT(invoice_due_date, '%M %d, %Y') FROM ap.invoices;