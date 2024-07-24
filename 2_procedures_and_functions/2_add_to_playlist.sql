-- Adds a song to a playlist with playlistId and songId

CREATE PROCEDURE addToPlaylist
    @playlistId INT,
    @songId INT
AS
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            PlaylistSongs
        WHERE
            playlistId = @playlistId AND songId = @songId
    )
        BEGIN
            INSERT INTO
                PlaylistSongs (playlistId, songId, addedDate)
            VALUES
                (@playlistId, @songId, GETDATE());
        END
    ELSE
        BEGIN
        SELECT 'Song is already in the playlist';
    END
END;