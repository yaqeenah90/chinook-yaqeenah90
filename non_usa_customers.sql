SELECT 
c.FirstName, c.LastName, c.CustomerId, c.Country
FROM Customer AS c 
WHERE c.Country <> 'USA'