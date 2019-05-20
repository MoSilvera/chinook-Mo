-- How many Invoices were there in 2009 & 2011?

SELECT COUNT(InvoiceId) Invoices
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 2009
;

SELECT COUNT(InvoiceId) Invoices
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 20011
;

