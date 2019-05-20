-- Which country's customers spent the most?
SELECT  TOP 1 i.BillingCountry, SUM (i.Total) SpentPerCountry FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SpentPerCountry DESC;
