-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT t.Name Trackname, a.Title Album, mt.Name MediaTypeName, g.Name Genre
FROM Track t 
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId;
