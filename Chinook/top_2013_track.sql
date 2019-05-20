-- Provide a query that shows the most purchased track of 2013.
SELECT t.Name,
    COUNT(il.TrackId) Downloaded
from Track t
JOIN InvoiceLine il on il.TrackId = t.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
WHERE YEAR (i.InvoiceDate) = '2013'
group by t.Name
ORDER BY Downloaded DESC;