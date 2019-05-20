-- Provide a query that shows the most purchased Media Type.
SELECT TOP 3 COUNT(il.InvoiceLineId) Downloaded, mt.Name FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY Downloaded DESC;