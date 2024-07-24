-- Removes a song from a playlist with playlistId and songId

CREATE PROCEDURE removeFromPlaylist
    @playlistId INT,
    @songId INT
AS
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            PlaylistSongs
        WHERE
            playlistId = @playlistId AND songId = @songId
    )
        BEGIN
            DELETE FROM
                PlaylistSongs
            WHERE
                playlistId = @playlistId
                AND songId = @songId;
        END
    ELSE
        BEGIN
        SELECT 'Song is not in the playlist';
    END
END;