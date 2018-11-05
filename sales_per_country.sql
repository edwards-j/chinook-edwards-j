-- Provide a query that shows the total sales per country.

SELECT COUNT(i.InvoiceId) AS "Invoices Per Country",
			i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
;