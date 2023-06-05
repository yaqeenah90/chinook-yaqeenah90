SELECT 
c.FirstName, c.LastName,  i.BillingCountry, i.InvoiceId, i.InvoiceDate
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId
WHERE i.BillingCountry = 'Brazil'