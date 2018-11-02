--  Looking at the InvoiceLine table, 
--provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT (il.InvoiceLineId) As "Line Items for Invoice ID 37"
FROM InvoiceLine il
WHERE il.InvoiceLineId = 37
;

