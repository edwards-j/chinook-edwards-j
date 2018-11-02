-- Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT i.InvoiceId,
			e.FirstName || ' ' || e.LastName AS "Full Name"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
;