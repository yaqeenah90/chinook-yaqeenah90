SELECT 
c.FirstName, c.LastName, e.FirstName,  e.LastName,  i.Total, c.Country
FROM Invoice AS i  
JOIN Customer AS c ON i.CustomerId = c.CustomerId
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId