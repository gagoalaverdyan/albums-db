-- Base Models

CREATE TABLE Artists (
    artistId INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
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

CREATE TABLE Playlists (
    playlistId INT PRIMARY KEY IDENTITY(1, 1),
    name NVARCHAR(128),
    description NVARCHAR(255),
    createdDate DATETIME DEFAULT GETDATE()
);


-- Relationship Tables

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

CREATE TABLE ArtistBios (
    artistId INT PRIMARY KEY,
    bio NVARCHAR(255),
    country NVARCHAR(100),
    instagram NVARCHAR(128),
    FOREIGN KEY (artistId) REFERENCES Artists (artistId) ON DELETE CASCADE
);

CREATE TABLE PlaylistSongs (
    playlistId INT,
    songId INT,
    addedDate DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (playlistId, songId),
    FOREIGN KEY (playlistId) REFERENCES Playlists (playlistId) ON DELETE CASCADE,
    FOREIGN KEY (songId) REFERENCES Songs (songId) ON DELETE CASCADE
);