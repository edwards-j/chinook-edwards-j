-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT COUNT(pt.TrackId),
			p.Name AS "Playlist Name"
FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlayListId
GROUP BY pt.PlayListId
;