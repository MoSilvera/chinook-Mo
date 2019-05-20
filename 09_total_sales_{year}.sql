
-- What are the total sales for 2009 and 2011?

SELECT SUM(Total) TotalSales2009
FROM Invoice
WHERE DATEPART(yyyy, InvoiceDate) = 2009
;

SELECT SUM(Total) TotalSales2011
FROM Invoice 
WHERE DATEPART(yyyy, InvoiceDate) = 2011
;