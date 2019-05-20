-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceId, t.Name TrackName, a.Name Artist
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist a ON a.ArtistId = al.ArtistId
ORDER BY il.InvoiceId;