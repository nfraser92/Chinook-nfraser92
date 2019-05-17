-- Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT COUNT(il.InvoiceLineId) ItemsOnInvoice, i.InvoiceId
FROM InvoiceLine il
INNER JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
GROUP By i.InvoiceId;
