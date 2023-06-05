SELECT e.FirstName, e.LastName, SUM(i.Total) AS TotalSales
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1