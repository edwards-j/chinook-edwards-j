-- Which country's customers spent the most?

SELECT SUM([Total]) AS "Total Spent",
			BillingCountry AS "Country"
FROM Invoice
GROUP BY BIllingCountry
;