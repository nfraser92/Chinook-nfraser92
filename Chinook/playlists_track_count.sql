-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
SELECT p.Name, COUNT(t.TrackId) Tracks FROM Playlist p
JOIN PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
GROUP BY p.Name;