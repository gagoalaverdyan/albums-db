-- List artist countries, genres and matching album counts,
-- ordered by countries and album counts (descending).

SELECT
    ArtistBios.country AS artistCountry,
    Genres.name AS genre,
    COUNT(*) AS albumCount
FROM
    Artists
    JOIN AlbumArtists ON Artists.artistId = AlbumArtists.artistId
    JOIN Albums ON AlbumArtists.albumId = Albums.albumId
    JOIN AlbumGenres ON Albums.albumId = AlbumGenres.albumId
    JOIN Genres ON AlbumGenres.genreId = Genres.genreId
    JOIN ArtistBios ON ArtistBios.artistId = Artists.artistId
GROUP BY
    ArtistBios.country, Genres.name
ORDER BY
    artistCountry,
    albumCount DESC;