SELECT c.Country, COUNT(*) AS InvoiceCount
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
