
-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT concat (c.FirstName, ' ',c.LastName) Customer, c.Country, i.Total, e.FirstName, e.LastName FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId;