--  Provide a query that shows the top 5 most purchased songs.
SELECT TOP 5 t.Name,
    COUNT(il.InvoiceLineId) Downloaded
from Track t
JOIN InvoiceLine il on il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
group by t.Name
ORDER BY Downloaded DESC;