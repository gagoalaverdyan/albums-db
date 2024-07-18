-- Lists album titles, release dates, artist names and genre names,
-- ordered by genre name and album id.

SELECT
    Albums.title,
    Albums.releaseDate,
    Artists.name,
    Genres.name
FROM
    Albums
    JOIN AlbumGenres ON Albums.albumId = AlbumGenres.albumId
    JOIN Genres ON AlbumGenres.genreId = Genres.genreId
    JOIN AlbumArtists ON AlbumArtists.albumId = Albums.albumId
    JOIN Artists ON Artists.artistId = AlbumArtists.artistId
ORDER BY
    Genres.name,
    Albums.albumId;