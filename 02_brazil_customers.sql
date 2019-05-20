--Provide a query only showing the Customers from Brazil.--

SELECT concat (FirstName, ' ', LastName) FullName, CustomerId, Country 
FROM Customer 
WHERE Country = 'Brazil';