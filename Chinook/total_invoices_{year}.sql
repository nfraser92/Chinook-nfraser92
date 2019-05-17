
-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011
-- 2009 Invoices
SELECT COUNT(InvoiceId) Invoice FROM Invoice
WHERE DATEPART(yy, InvoiceDate) = 2009
;
-- 2011 Invoices
SELECT COUNT(InvoiceId) Invoice FROM Invoice
WHERE DATEPART(yy, InvoiceDate) = 2011
;