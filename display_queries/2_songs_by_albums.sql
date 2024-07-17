SELECT
    Albums.albumId,
    Albums.title,
    Songs.songId,
    Songs.title,
    Songs.trackNumber
FROM
    Albums
    JOIN AlbumSongs ON Albums.albumId = AlbumSongs.albumId
    JOIN Songs ON AlbumSongs.songId = Songs.songId
ORDER BY
    Albums.albumId, Songs.trackNumber;