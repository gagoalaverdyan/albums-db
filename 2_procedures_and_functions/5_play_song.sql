-- Adds a song to listening hitory if not played,
-- updates listening time if otherwise

CREATE PROCEDURE playSong
    @userId INT,
    @songId INT
AS
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            ListeningHistory
        WHERE
            userId = @userId AND songId = @songId
    )
        BEGIN
            UPDATE
                ListeningHistory
            SET
                listenedTime = GETDATE()
            WHERE
                userId = @userId AND songId = @songId;
        END
    ELSE
        BEGIN
            INSERT INTO ListeningHistory (userId, songId, listenedTime)
            VALUES (@userId, @songId, GETDATE());
        END
END;