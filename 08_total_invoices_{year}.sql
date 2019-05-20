-- How many Invoices were there in 2009 & 2011?

SELECT COUNT(InvoiceId) Invoices
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 2009
;

SELECT COUNT(InvoiceId) Invoices
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 2011
;


select NumberOfInvoices, InvoiceYear
FROM(
    select Count(i.InvoiceId) NumberOfInvoices,
    YEAR (i.InvoiceDate) InvoiceYear
    from Invoice i
    group by YEAR(i.InvoiceDate)
) as Aggregate
where Aggregate.InvoiceYear = '2011'
or Aggregate.InvoiceYear='2009'
;
