SELECT ar.Name AS ArtistName, COUNT(*) AS SalesCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ArtistName
ORDER BY SalesCount DESC
LIMIT 3