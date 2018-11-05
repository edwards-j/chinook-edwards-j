-- Provide a query that includes the purchased track name with each invoice line item.

SELECT il.TrackId,
			il.InvoiceLineId,
			t.TrackId,
			t.Name
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
;