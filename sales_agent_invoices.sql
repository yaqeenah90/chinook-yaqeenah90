SELECT 
e.FirstName,  e.LastName,  i.InvoiceId
FROM Invoice AS i  
JOIN Customer AS c ON i.CustomerId = c.CustomerId
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId

