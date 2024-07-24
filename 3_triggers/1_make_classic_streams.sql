-- An inserted or updated song is considered a classic
-- if it has more than 200,000,000 streams.

CREATE TRIGGER trg_makeClassicOnCreate
ON Songs
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE 
        Songs
    SET
        isClassic = 1
    WHERE
        streams > 200000000 AND isClassic = 0
END;