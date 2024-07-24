-- When connecting a song to an album, all the
-- songs are considered a classic 

CREATE TRIGGER trg_makeClassicOnAlbumConnect
ON AlbumSongs
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE
        Songs
    SET
        isClassic = 1
    WHERE 
        songId IN (
            SELECT
        songId
    FROM
        AlbumSongs
        JOIN Albums ON AlbumSongs.albumId = Albums.albumID
    WHERE
                Albums.releaseDate < '2000-01-01'
        );
END;