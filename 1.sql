INSERT INTO artist (name) VALUES
('The Beatles'),
('Queen'),
('Pink Floyd'),
('Michael Jackson'),
('Freddie Mercury'),
('David Bowie');

INSERT INTO genre (name) VALUES
('Rock'),
('Pop'),
('Progressive Rock');

INSERT INTO artist_genre (artist_id, genre_id) VALUES
(1, 1), (1, 2),
(2, 1),
(3, 1), (3, 3),
(4, 2),
(5, 1),
(6, 1), (6, 2);

INSERT INTO album (title, release_year) VALUES
('Abbey Road', 1969),
('A Night at the Opera', 1975),
('The Dark Side of the Moon', 1973),
('Thriller', 1982),
('Let It Be', 1970),
('Modern Hits', 2019);

INSERT INTO artist_album (artist_id, album_id) VALUES
(1, 1), (1, 5),
(2, 2),
(3, 3),
(4, 4),
(5, 2);

INSERT INTO track (title, duration, album_id) VALUES
('Come Together', 259, 1),
('Something', 182, 1),
('Bohemian Rhapsody', 354, 2),
('Love of My Life', 218, 2),
('Money', 382, 3),
('Time', 421, 3),
('Thriller', 357, 4),
('Billie Jean', 294, 4),
('Let It Be', 243, 5),
('My Way', 276, 5),
('my own', 180, 6),
('own my', 185, 6),
('my', 190, 6),
('oh my god', 200, 6),
('myself', 195, 6),
('by myself', 193, 6),
('bemy self', 188, 6),
('myself by', 192, 6),
('by myself by', 196, 6),
('beemy', 183, 6),
('premyne', 187, 6);

INSERT INTO compilation (title, release_year) VALUES
('Greatest Rock Hits', 2019),
('Classic 70s', 2020),
('Pop Legends', 2021),
('My Favorite Songs', 2018),
('Best of the Beatles', 2022);

INSERT INTO compilation_track (compilation_id, track_id) VALUES
(1, 1), (1, 3), (1, 5), (1, 6),
(2, 2), (2, 4), (2, 7),
(3, 7), (3, 8),
(4, 1), (4, 4), (4, 9), (4, 10),
(5, 1), (5, 9);