CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(100)
);

CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
);

CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE AlbumGenres (
    album_id INT,
    genre_id INT,
    PRIMARY KEY (album_id, genre_id),
    FOREIGN KEY (album_id) REFERENCES Albums (album_id),
    FOREIGN KEY (genre_id) REFERENCES Genres (genre_id)
);