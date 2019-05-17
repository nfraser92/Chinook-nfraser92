-- Provide a query that shows total sales made by each sales agent.
SELECT SUM(i.Total) TotalSales, e.EmployeeId, e.FirstName, e.LastName AS EmployeeName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName;
