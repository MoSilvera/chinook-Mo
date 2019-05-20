--Provide a query that shows the # of invoices per country. HINT: GROUP BY--
SELECT il.InvoiceId, COUNT(il.InvoiceId) LineItems, i.BillingCountry
FROM InvoiceLine il
JOIN Invoice i on i.InvoiceId = il.InvoiceId
GROUP BY BillingCountry, il.InvoiceId
;