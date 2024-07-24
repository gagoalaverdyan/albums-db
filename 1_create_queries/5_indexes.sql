/* 
All tables use ID's as primary keys, which are indexed by default.
I just decided to add some indexes for columns that in my opinion might
be used more often separately. Yet, depends on usage.
Of course, creating them all together is not a good idea, right? :)
*/

-- Index on ArtistBios's country
CREATE INDEX idx_artists_country ON ArtistBios (country);

-- Index on Album's relase date
CREATE INDEX idx_albums_releaseDate ON Albums(releaseDate);

-- Index on Genres' name
CREATE INDEX idx_genre_name ON Genres (name);

-- Index on both columns in AlbumGenres, since
-- they might get used together frequently a lot.
CREATE INDEX idx_albumGenres_albumId ON AlbumGenres (albumId);
CREATE INDEX idx_albumGenres_genreId ON AlbumGenres (genreId);

-- Index on Songs' track number
CREATE INDEX idx_songs_trackNumber ON Songs (trackNumber);