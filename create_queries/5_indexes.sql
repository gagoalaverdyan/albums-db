/* 
Most tables use ID's as primary keys, which are indexed by default.
I just decided to add some indexes for columns that in my opinion might
be used more often separately. Yet, depends on usage.
Of course, creating them al ltogether is not a good idea, right? :)
*/

-- Index on Artist's name
CREATE INDEX idx_name ON Artists (name);

-- Index on Album's artist_id
CREATE INDEX idx_artist_id ON Albums (artist_id);

-- Index on Genres' name
CREATE INDEX idx_genre_name ON Genres (name);

-- Index on both columns in AlbumGenres, since
-- they might get used together frequently a lot.
CREATE INDEX idx_album_genre ON AlbumGenres (album_id, genre_id);

-- Index on Songs' album_id
CREATE INDEX idx_album_id ON Songs (album_id);