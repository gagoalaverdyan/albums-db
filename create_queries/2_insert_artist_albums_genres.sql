-- Inserting artist Mac Miller
INSERT INTO Artists (name, country) VALUES
('Mac Miller', 'United States');

-- Inserting albums for Mac Miller
INSERT INTO Albums (title, releaseDate) VALUES
('Blue Slide Park', '2011-11-08'),
('Watching Movies With The Sound Off', '2013-06-18'),
('GO:OD AM', '2015-09-18'),
('The Divine Feminine', '2016-09-16'),
('Swimming', '2018-08-03'),
('Circles', '2020-01-17');

-- All albums are by Mac Miller (Artist ID 1)
INSERT INTO AlbumArtists (albumId, artistId) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- Inserting genres
INSERT INTO Genres (name) VALUES
('Hip Hop'),
('Rap'),
('Jazz Rap');