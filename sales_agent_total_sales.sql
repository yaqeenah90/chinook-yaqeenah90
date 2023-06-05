SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    (SELECT SUM(i.Total)
    FROM Customer AS c
    JOIN Invoice AS i ON c.CustomerId = i.CustomerId
    WHERE c.SupportRepId = e.EmployeeId) AS TotalSales
FROM Employee AS e
