SELECT e.FirstName, e.lastName, COUNT (c.CustomerId) CustomersAssignedToRep FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName;