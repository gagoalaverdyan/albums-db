-- Ceating sample playlists
INSERT INTO Playlists (name, description) VALUES
('Best of Mac Miller', 'From high-school classics to soul-shattering rhymes - here is best of Mac Miller');

-- Creating a playlist using stored procedure
DECLARE @result NVARCHAR(255);
EXEC createPlaylist 'Acoustic', 'Stripped- songs', @result OUTPUT;

INSERT INTO PlaylistSongs (playlistId, songId) VALUES
(1, 3),
(1, 6),
(1, 9), 
(1, 12),
(2, 15),
(2, 18),
(2, 21),
(2, 24), 
(2, 27);

-- Adding songs using stored procedure
EXEC addToPlaylist 1, 1;
EXEC addToPlaylist 1, 4;
EXEC addToPlaylist 2, 11;
EXEC addToPlaylist 2, 19;


-- Insert sample users
INSERT INTO Users (username, email) VALUES
('mileycyrus', 'miley@mileycyrus.com'),
('basicuser', 'user@users.com'),
('marble', 'timarble@mail.com');

-- Assign playlists to users
INSERT INTO UserPlaylists (userId, playlistId) VALUES
(1, 1),
(2, 2);