-- Best of Mac Miller playlist

INSERT INTO Playlists (name, description) VALUES
('Best of Mac Miller', 'From high-school classics to soul-shattering rhymes - here is best of Mac Miller');

INSERT INTO PlaylistSongs (playlistId, songId) VALUES
(1, 3),
(1, 6),
(1, 9), 
(1, 12),
(1, 15),
(1, 18),
(1, 21),
(1, 24), 
(1, 27);

-- Adding songs using stored procedure
EXEC addToPlaylist 1, 1;
EXEC addToPlaylist 1, 4;
EXEC addToPlaylist 1, 11;
EXEC addToPlaylist 1, 19;

-- Creating a playlist using stored procedure
DECLARE @result NVARCHAR(255);
EXEC createPlaylist 'Acoustic', 'Stripped- songs', @result OUTPUT;
