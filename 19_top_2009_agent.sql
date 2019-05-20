

Select TOP 1
'$' + CAST(MAX(TotalSales) AS VARCHAR(25)) TotalSales,
    EmployeeName
    From (
        SELECT 
            SUM(i.Total) TotalSales, 
            e.FirstName + ' '+ e.LastName EmployeeName,
            Year(i.InvoiceDate) as InvoiceYear
     From Invoice i, Employee e, Customer c
     Where i.CustomerId = c.CustomerId
     AND c.SupportRepId = e.EmployeeId
     AND YEAR(i.InvoiceDate) = '2009'
     GROUP BY e.FirstName + ' ' + e.LastName, Year(i.InvoiceDate)
     ) Sales
     Group by EmployeeName
     Order By TotalSales DESC
     ;