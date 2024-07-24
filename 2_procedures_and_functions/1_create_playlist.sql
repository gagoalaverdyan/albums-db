-- Creates a playlist with given name and optional description,
-- then returns a message with the playlist ID

CREATE PROCEDURE createPlaylist
    @name NVARCHAR(128),
    @description NVARCHAR(255) = NULL,
    @message NVARCHAR(255) OUTPUT
AS
BEGIN
    INSERT INTO Playlists (name, description, createdDate) VALUES
    (@name, @description, GETDATE());

    DECLARE @createdPlaylistId INT;
    SET @createdPlaylistId = SCOPE_IDENTITY();

    SET @message = 'Playlist ID ' + CAST(@createdPlaylistId AS NVARCHAR(20)) + ' created: ' + @name;
    SELECT @message;
END;