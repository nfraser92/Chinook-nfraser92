-- 2009 Invoices
SELECT SUM(Total) TotalSales FROM Invoice
WHERE DATEPART(yy, InvoiceDate) = 2009
;
-- 2011 Invoices
SELECT SUM(Total) TotalSales FROM Invoice
WHERE DATEPART(yy, InvoiceDate) = 2011
;