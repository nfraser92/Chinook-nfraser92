-- Provide a query that shows the top 3 best selling artists.
SELECT TOP 3 COUNT(il.InvoiceLineId) Downloaded, a.Name FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY a.Name 
ORDER BY Downloaded DESC;