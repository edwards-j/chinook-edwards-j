-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre

SELECT t.Name AS "Track Name",
			mt.Name AS "Media Type",
			al.Title AS "Album Title",
			g.Name AS "Genre"
FROM Track t
JOIN Album al ON t.AlbumId = al.Albumid
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId
;