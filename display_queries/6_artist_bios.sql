-- List artist names, bios and Instagram handles.

SELECT
    Artists.artistId,
    Artists.name,
    ArtistBios.country,
    ArtistBios.bio,
    ArtistBios.instagram
FROM
    Artists
    LEFT JOIN ArtistBios ON ArtistBios.artistId = ArtistBios.artistId;