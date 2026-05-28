SELECT g.name AS genre, COUNT(ag.artist_id) AS artist_count
FROM genre g
LEFT JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_id, g.name;

SELECT COUNT(t.track_id) AS track_count
FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album, AVG(t.duration) AS avg_duration_sec
FROM album a
LEFT JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_id, a.title;

SELECT DISTINCT ar.name
FROM artist ar
WHERE ar.artist_id NOT IN (
    SELECT aa.artist_id
    FROM artist_album aa
    JOIN album al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
);

SELECT DISTINCT c.title AS compilation_name
FROM compilation c
JOIN compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN track t ON ct.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'The Beatles';