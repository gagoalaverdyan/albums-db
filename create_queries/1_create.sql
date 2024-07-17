CREATE TABLE Artists (
    artist_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    country NVARCHAR(100)
);

CREATE TABLE Albums (
    album_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    release_date DATE,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
);

CREATE TABLE Songs (
    song_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    track_number INT NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums (album_id)
);

CREATE TABLE Genres (
    genre_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE AlbumGenres (
    album_id INT,
    genre_id INT,
    PRIMARY KEY (album_id, genre_id),
    FOREIGN KEY (album_id) REFERENCES Albums (album_id),
    FOREIGN KEY (genre_id) REFERENCES Genres (genre_id)
);