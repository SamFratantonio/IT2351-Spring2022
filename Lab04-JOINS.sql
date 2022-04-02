/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 04, Sam Fratantonio */

SELECT invoice_number, invoice_total, terms_description FROM ap.invoices
INNER JOIN ap.terms ON invoices.terms_id=terms.terms_id;

SELECT *, invoices.invoice_id
FROM ap.invoice_line_items
INNER JOIN ap.invoices ON invoices.invoice_id=invoice_line_items.invoice_id
WHERE invoices.invoice_id=12;

SELECT vendor_id, vendor_name, terms_description 
FROM ap.vendors
INNER JOIN ap.terms ON vendors.default_terms_id=terms.terms_id;

SELECT * FROM ap.general_ledger_accounts AS gl
LEFT OUTER JOIN ap.invoice_line_items AS li ON li.account_number=gl.account_number;