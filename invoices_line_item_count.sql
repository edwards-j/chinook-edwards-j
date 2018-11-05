--  Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(il.InvoiceLineId) AS "Items per Invoice",
			i.InvoiceId
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId
;