SELECT
    Artists.country AS artistCountry,
    Genres.name AS genre,
    COUNT(*) AS albumCount
FROM
    Artists
    JOIN AlbumArtists ON Artists.artistId = AlbumArtists.artistId
    JOIN Albums ON AlbumArtists.albumId = Albums.albumId
    JOIN AlbumGenres ON Albums.albumId = AlbumGenres.albumId
    JOIN Genres ON AlbumGenres.genreId = Genres.genreId
GROUP BY
    Artists.country, Genres.name
ORDER BY
    artistCountry,
    albumCount DESC;