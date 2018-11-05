-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT COUNT(c.FirstName || ' ' || c.LastName) AS "Number of Customers",
			e.FirstName || ' ' || e.LastName AS "Support Rep Name"
FROM Customer c
JOIN Employee e on c.SupportRepId = e.EmployeeId
GROUP BY "Support Rep Name"
;