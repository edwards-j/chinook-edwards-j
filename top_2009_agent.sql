-- Which sales agent made the most in sales in 2009?

select MAX(AllProfits.Profit) from

(SELECT  SUM(i.Total) Profit,
			e.FirstName ||  ' '  || e.LastName AS "Sales Agent Name"
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2009%"
GROUP BY "Sales Agent Name"
ORDER BY SUM(i.Total) desc) AllProfits
;