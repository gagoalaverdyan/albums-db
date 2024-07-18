-- Lists album release years, artist names, album names and release date,
-- ordered by release year and release date.

SELECT
    YEAR(Albums.releaseDate),
    Artists.name,
    Albums.title,
    Albums.releaseDate
FROM
    Albums
    JOIN AlbumArtists ON AlbumArtists.albumId = Albums.albumId
    JOIN Artists ON Artists.artistId = AlbumArtists.artistId
ORDER BY
    YEAR(Albums.releaseDate),
    Albums.releaseDate;