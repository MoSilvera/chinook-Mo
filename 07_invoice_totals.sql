-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT 
	i.InvoiceId,  
	i.Total,
	concat (c.FirstName, ' ', c.LastName) CustomerName,
	c.Country,
	concat ( e.FirstName, ' ', e.LastName) SalesAgent
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
ORDER BY CustomerName
;