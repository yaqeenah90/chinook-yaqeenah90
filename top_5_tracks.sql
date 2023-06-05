SELECT t.Name AS TrackName, COUNT(*) AS PurchaseCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY TrackName
ORDER BY PurchaseCount DESC
LIMIT 5
