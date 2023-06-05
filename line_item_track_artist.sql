SELECT il.InvoiceLineId, il.InvoiceId, t.Name AS TrackName, t.Composer AS ArtistName
FROM InvoiceLine AS il
JOIN Track AS t ON il.TrackId = t.TrackId