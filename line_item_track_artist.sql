-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceLineId,
			t.Name AS "Track Name",
			al.Title AS "Album Title",
			ar.Name AS "Artist Name"
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
;