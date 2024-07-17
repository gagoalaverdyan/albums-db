SELECT
    Albums.title,
    Artists.name,
    Albums.release_date
FROM
    Albums
    LEFT JOIN Artists
    ON Albums.artist_id = Artists.artist_id
ORDER BY
    Albums.title;