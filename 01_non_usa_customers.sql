--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.--

SELECT concat (FirstName, ' ', LastName) FullName, CustomerId, Country 
FROM Customer 
WHERE Country != 'USA';