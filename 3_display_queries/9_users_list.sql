-- Lists users info and number of user playlists
-- soon to show user's total streams

SELECT
    Users.userId,
    Users.userName,
    Users.email,
    COUNT(UserPlaylists.playlistId) AS numOfPlaylists
FROM
    Users
    JOIN UserPlaylists ON Users.userId = UserPlaylists.userId
GROUP BY
    Users.userId,
    Users.username,
    Users.email
ORDER BY
    Users.userId;