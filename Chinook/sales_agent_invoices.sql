-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT concat (e.FirstName, ' ', e.LastName) EmployeeName, i.InvoiceId, i.InvoiceDate, i.CustomerId
FROM Employee e
JOIN Customer c ON  c.SupportRepId = e.EmployeeId
JOIN Invoice i on i.CustomerId = c.CustomerId;