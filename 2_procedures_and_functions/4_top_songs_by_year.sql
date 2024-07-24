-- Function to get top 100 streamed songs by year

CREATE FUNCTION topSongsByYear (
    @year INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 100
    Songs.title,
    Songs.streams,
    Albums.releaseDate
FROM
    Songs
    JOIN AlbumSongs ON AlbumSongs.songId = Songs.songId
    JOIN Albums ON AlbumSongs.albumId = Albums.albumId
WHERE
        YEAR(Albums.releaseDate) = @year
ORDER BY
        Songs.streams DESC
);