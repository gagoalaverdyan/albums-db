-- List artist names, bios and Instagram handles.

SELECT
    Artists.artistId,
    Artists.name,
    Bios.bio,
    Bios.country,
    Bios.instagram
FROM
    Artists
    LEFT JOIN ArtistBios ON ArtistBios.artistId = ArtistBios.artistId
    LEFT JOIN Bios ON Bios.bioId = ArtistBios.bioId;