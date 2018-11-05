-- Provide a query that shows the most purchased track of 2013.

SELECT il.TrackId,
			t.Name
FROM InvoiceLine il
JOIN Track t on il.TrackId = t.TrackId
;