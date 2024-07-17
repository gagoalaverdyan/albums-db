SELECT
    Albums.albumId,
    Albums.title,
    Albums.releaseDate,
    Genres.genreId,
    Genres.name
FROM
    Albums
    JOIN AlbumGenres ON Albums.albumId = AlbumGenres.albumId
    JOIN Genres ON AlbumGenres.genreId = Genres.genreId
ORDER BY
    Genres.name,
    Albums.releaseDate;