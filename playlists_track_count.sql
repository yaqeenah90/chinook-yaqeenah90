SELECT p.Name AS PlaylistName, COUNT(*) AS TrackCount
FROM Playlist AS p
JOIN PlaylistTrack AS pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId