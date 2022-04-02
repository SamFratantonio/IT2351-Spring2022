/* Spring 2022, IT 2351 - Enterprise Database Systems, Lab 07, Sam Fratantonio */

INSERT INTO ap.invoice_archive SElECT * FROM ap.invoices;
SELECT * FROM ap.invoices WHERE invoice_total >= (SELECT MAX(invoice_total) FROM ap.invoices WHERE vendor_id=72);

SELECT vendor_state, MAX(invoices_sum) AS max_invoices_sum FROM 
(SELECT vendor_state, vendor_name, SUM(invoice_total) AS invoices_sum
FROM ap.vendors v JOIN ap.invoices i ON v.vendor_id = i.vendor_id 
GROUP BY vendor_state, vendor_name) t 
GROUP BY vendor_state ORDER BY vendor_state;
/*
The subquery takes each vendor and finds the sum of their invoice totals. 
It does this by joining the ap.vendors table and the ap.invoices table on the vendor_id
and grouping them by vendor. Then the "main" query finds MAX(invoices_sum) to return the  
the top vendor in each state along with their total.
*/

SELECT CONCAT('$', invoice_total), CONCAT('$', payment_total) FROM ap.invoices;

/*
There are multiple ways to store a paragraph. If the server is for a website, you could simply store HTML 
in a string <p>Like This <br>line 1<br>line 2<br> line 3</p>.
Or you could just have a string with \n characters in it to separate lines. 
There are a variety of ways to do it. 
*/
