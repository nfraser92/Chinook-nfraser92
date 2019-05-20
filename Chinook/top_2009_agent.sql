-- Which sales agent made the most in sales in 2009?
SELECT TOP 1 concat (e.FirstName, ' ', e.LastName) SalesAgent FROM Employee e
JOIN (
    SELECT e.EmployeeId, SUM(i.Total) SalesTotal
    FROM Employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i on i.CustomerId = c.CustomerId
    WHERE YEAR (i.InvoiceDate) = '2009'
    GROUP BY e.EmployeeId
) s ON s.EmployeeId = e.EmployeeId
ORDER BY s.SalesTotal DESC;

