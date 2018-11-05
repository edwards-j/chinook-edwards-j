-- Which sales agent made the most in sales over all?

SELECT  COUNT(i.CustomerId) ,
			e.FirstName ||  ' '  || e.LastName AS "Sales Agent Name"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY "Sales Agent Name"
ORDER BY  COUNT(i.CustomerId) desc
LIMIT 1
;