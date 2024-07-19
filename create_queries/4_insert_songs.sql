-- Sorry, I am inserting only first five songs from every album.
-- Otherwise, it would take too long :)
-- Every song has a rangom streams count between 100 and 300 million.

-- Mac Miller albums
-- Blue Slide Park
INSERT INTO Songs (title, trackNumber, streams) VALUES
('English Lane', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Blue Slide Park', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Party on Fifth Ave.', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('PA Nights', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Frick Park Market', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- Watching Movies with the Sound Off
INSERT INTO Songs (title, trackNumber, streams) VALUES
('The Star Room', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Avian', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Im Not Real', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('S.D.S.', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Bird Call', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10);

-- GO:OD AM
INSERT INTO Songs (title, trackNumber, streams) VALUES
('Doors', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Brand Name', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Rush Hour', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Two Matches', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('100 Grandkids', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15);

-- The Divine Feminine
INSERT INTO Songs (title, trackNumber, streams) VALUES
('Congratulations', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Dang!', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Stay', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Skin', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Cinderella', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20);

-- Swimming
INSERT INTO Songs (title, trackNumber, streams) VALUES
('Come Back to Earth', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Hurt Feelings', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Whats the Use?', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Perfecto', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Self Care', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25);

-- Circles
INSERT INTO Songs (title, trackNumber, streams) VALUES
('Circles', 1, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Complicated', 2, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Blue World', 3, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('Good News', 4, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000),
('I Can See', 5, ABS(CHECKSUM(NEWID())) % 200000000 + 100000000);

INSERT INTO AlbumSongs (albumId, songId) VALUES
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30);