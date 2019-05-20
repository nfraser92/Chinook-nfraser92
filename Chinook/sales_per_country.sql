-- Provide a query that shows the total sales per country.
SELECT i.BillingCountry, COUNT (i.BillingCountry) FROM Invoice i
GROUP BY i.BillingCountry;