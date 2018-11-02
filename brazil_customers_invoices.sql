SELECT c.CustomerId,
			c.FirstName || ' ' || c.LastName AS "Full Name",
			i.CustomerId,
			i.InvoiceDate,
			i.BillingCountry		
FROM Customer c
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE i.BillingCountry = "Brazil"
;