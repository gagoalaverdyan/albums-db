-- Increase the streams of a song when played

CREATE TRIGGER trg_increaseStreams
ON listeningHistory
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE
        Songs
    SET
        streams = streams + 1
    FROM 
        Songs
    JOIN
        inserted ON Songs.songId = inserted.songId;
END;