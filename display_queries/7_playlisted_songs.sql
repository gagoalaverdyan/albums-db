-- List songs added to playlists, playlist name, song id, artist name and added date
-- ordered by playlist id and descending by adding date.

SELECT
    Playlists.playlistId,
    Playlists.name,
    Songs.songId,
    Songs.title,
    Artists.name,
    PlaylistSongs.addedDate
FROM
    PlaylistSongs
    JOIN Playlists ON PlaylistSongs.playlistId = Playlists.playlistId
    JOIN Songs ON PlaylistSongs.songId = Songs.songId
    JOIN AlbumSongs ON Songs.songId = AlbumSongs.songId
    JOIN AlbumArtists ON AlbumSongs.albumId = AlbumArtists.albumId
    JOIN Artists ON AlbumArtists.artistId = Artists.artistId
ORDER BY
    Playlists.playlistId,
    PlaylistSongs.addedDate DESC;