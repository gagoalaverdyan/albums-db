-- Insert some sample listening history

INSERT INTO ListeningHistory (userId, songId) VALUES 
(1, 2),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 3),
(3, 5);

-- Play songs (insert history) using stored procedure
EXEC playSong 1, 5;
EXEC playSong 2, 9;
EXEC playSong 3, 14;