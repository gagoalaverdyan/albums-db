SELECT
    title AS album_title,
    YEAR(release_date) AS release_year
FROM
    Albums
ORDER BY
    release_year;