SELECT
    Genres.name AS genre_name,
    COUNT(AlbumGenres.album_id) AS album_count
FROM
    Genres
    LEFT JOIN AlbumGenres
    ON Genres.genre_id = AlbumGenres.genre_id
GROUP BY
    Genres.name
ORDER BY
    album_count DESC;