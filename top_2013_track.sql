SELECT t.Name AS TrackName, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY TrackName
ORDER BY PurchaseCount DESC
LIMIT 1
