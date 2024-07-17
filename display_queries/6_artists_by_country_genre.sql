SELECT
    Artists.country AS artist_country,
    Genres.name AS genre,
    COUNT(*) AS album_count
FROM Artists
    JOIN Albums ON Artists.artist_id = Albums.artist_id
    JOIN AlbumGenres ON Albums.album_id = AlbumGenres.album_id
    JOIN Genres ON AlbumGenres.genre_id = Genres.genre_id
GROUP BY
    Artists.country, Genres.name
ORDER BY
    artist_country,
    album_count DESC;