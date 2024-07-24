-- Lists users info, number of user playlists and total streams by the user

SELECT
    Users.userId,
    Users.userName,
    Users.email,
    COUNT(UserPlaylists.playlistId) AS numOfPlaylists,
    COUNT(ListeningHistory.userId) AS totalStreams
FROM
    Users
    JOIN UserPlaylists ON Users.userId = UserPlaylists.userId
    JOIN ListeningHistory ON  Users.userId = ListeningHistory.userId
GROUP BY
    Users.userId,
    Users.username,
    Users.email
ORDER BY
    Users.userId;