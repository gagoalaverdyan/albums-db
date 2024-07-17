SELECT 
    Albums.albumId,
    Albums.title,
    Albums.releaseDate,
    Artists.artistId,
    Artists.name,
    Artists.country
FROM
    Albums
    JOIN AlbumArtists ON Albums.albumId = AlbumArtists.albumId
    JOIN Artists ON AlbumArtists.artistId = Artists.artistId
ORDER BY
    Artists.name,
    Albums.releaseDate;