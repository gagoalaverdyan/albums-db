CREATE TABLE Artists (
    artistId INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    country NVARCHAR(100)
);

CREATE TABLE Albums (
    albumId INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    releaseDate DATE
);

CREATE TABLE Songs (
    songId INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    trackNumber INT NOT NULL
);

CREATE TABLE Genres (
    genreId INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE AlbumGenres (
    albumId INT,
    genreId INT,
    PRIMARY KEY (albumId, genreId),
    FOREIGN KEY (albumId) REFERENCES Albums (albumId) ON DELETE CASCADE,
    FOREIGN KEY (genreId) REFERENCES Genres (genreId) ON DELETE CASCADE
);

CREATE TABLE AlbumArtists (
    albumId INT,
    artistId INT,
    PRIMARY KEY (albumId, artistId),
    FOREIGN KEY (albumId) REFERENCES Albums (albumId) ON DELETE CASCADE,
    FOREIGN KEY (artistId) REFERENCES Artists (artistId) ON DELETE CASCADE
);

CREATE TABLE AlbumSongs (
    albumId INT,
    songId INT,
    PRIMARY KEY (albumId, songId),
    FOREIGN KEY (albumId) REFERENCES Albums (albumId) ON DELETE CASCADE,
    FOREIGN KEY (songId) REFERENCES Songs (songId) ON DELETE CASCADE
);