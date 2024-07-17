SELECT 
    a.title AS album_title,
    COUNT(s.song_id) AS song_count
FROM
    Albums a
    LEFT JOIN Songs s
    ON a.album_id = s.album_id
GROUP BY
    a.title
ORDER BY
    song_count DESC;