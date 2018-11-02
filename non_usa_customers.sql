SELECT c.CustomerId,
			c.Country,
			c.FirstName || ' ' || c.LastName AS "Full Name"
FROM Customer c
WHERE c.Country != "USA"
;