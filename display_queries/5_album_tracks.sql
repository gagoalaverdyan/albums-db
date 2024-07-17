SELECT 
    Albums.title AS album_title,
    Songs.title AS song_title,
    Songs.track_number
FROM
    Albums
    JOIN Songs
    ON Albums.album_id = Songs.album_id
ORDER BY
    Albums.title,
    Songs.track_number;