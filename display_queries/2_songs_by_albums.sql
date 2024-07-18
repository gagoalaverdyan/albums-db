-- Lists track numbers, titles, albums and artists,
-- ordered by album's ID and the track number.

SELECT
    Songs.trackNumber,
    Songs.title,
    Albums.title,
    Artists.name
FROM
    Albums
    JOIN AlbumSongs ON Albums.albumId = AlbumSongs.albumId
    JOIN Songs ON AlbumSongs.songId = Songs.songId
    JOIN AlbumArtists ON AlbumArtists.albumId = Albums.albumId
    JOIN Artists ON Artists.artistId = AlbumArtists.artistId
ORDER BY
    Albums.albumId, Songs.trackNumber;