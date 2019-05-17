-- Provide a query that includes the purchased track name with each invoice line item.
SELECT t.Name from Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId;