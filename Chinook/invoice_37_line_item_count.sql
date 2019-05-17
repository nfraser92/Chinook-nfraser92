﻿-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT COUNT (il.TrackId) Invoice
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
WHERE il.InvoiceId = 37;