SELECT
    YEAR(Albums.releaseDate),
    Albums.albumId,
    Albums.title,
    Albums.releaseDate
FROM
    Albums
ORDER BY
    YEAR(Albums.releaseDate),
    Albums.releaseDate;