SELECT e.FirstName, e.LastName, COUNT(c.CustomerId) AS TotalCustomers
FROM Employee AS e
LEFT JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.FirstName, e.LastName