-- Provide a query that shows the # of invoices per country. HINT: GROUP BY
SELECT i.BillingCountry, Count (BillingCountry) TotalInvoices
FROM Invoice i
GROUP BY i.BillingCountry;