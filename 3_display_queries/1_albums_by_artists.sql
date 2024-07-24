-- Lists albums, artists and release dates,
-- ordered by artist name and release date.

SELECT 
    Albums.title,
    Artists.name,
    Albums.releaseDate
FROM
    Albums
    JOIN AlbumArtists ON Albums.albumId = AlbumArtists.albumId
    JOIN Artists ON AlbumArtists.artistId = Artists.artistId
ORDER BY
    Artists.name,
    Albums.releaseDate;