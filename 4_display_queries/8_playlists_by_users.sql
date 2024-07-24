-- Lists playlists by users, including playlist names,
-- descriptions, song counts and creation dates.

SELECT
    Users.username,
    Playlists.playlistId,
    Playlists.name,
    Playlists.description,
    COUNT(PlaylistSongs.songId) AS songCount,
    Playlists.createdDate
FROM
    Users
    JOIN UserPlaylists ON Users.userId = UserPlaylists.userId
    JOIN Playlists ON UserPlaylists.playlistId = Playlists.playlistId
    LEFT JOIN PlaylistSongs ON Playlists.playlistId = PlaylistSongs.playlistId
GROUP BY
    Users.username,
    Playlists.playlistId,
    Playlists.name,
    Playlists.description,
    Playlists.createdDate
ORDER BY
    Playlists.playlistId;