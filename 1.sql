
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
(1, 1), (1, 2),  -- The Beatles: Rock, Pop
(2, 1),          -- Queen: Rock
(3, 1), (3, 3),  -- Pink Floyd: Rock, Progressive Rock
(4, 2),          -- Michael Jackson: Pop
(5, 1),          -- Freddie Mercury: Rock
(6, 1), (6, 2);  -- David Bowie: Rock, Pop


INSERT INTO album (title, release_year) VALUES
('Abbey Road', 1969),
('A Night at the Opera', 1975),
('The Dark Side of the Moon', 1973),
('Thriller', 1982),
('Let It Be', 1970);


INSERT INTO artist_album (artist_id, album_id) VALUES
(1, 1),  -- The Beatles → Abbey Road
(1, 5),  -- The Beatles → Let It Be
(2, 2),  -- Queen → A Night at the Opera
(3, 3),  -- Pink Floyd → The Dark Side of the Moon
(4, 4),  -- Michael Jackson → Thriller
(5, 2);  -- Freddie Mercury → A Night at the Opera (как участник Queen)


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
('My Way', 276, NULL);  -- NULL album_id для теста (сингл)


INSERT INTO compilation (title, release_year) VALUES
('Greatest Rock Hits', 2019),
('Classic 70s', 2020),
('Pop Legends', 2021),
('My Favorite Songs', 2018),
('Best of the Beatles', 2022);


INSERT INTO compilation_track (compilation_id, track_id) VALUES
(1, 1), (1, 3), (1, 5), (1, 6),   -- Greatest Rock Hits
(2, 2), (2, 4), (2, 7),            -- Classic 70s
(3, 7), (3, 8),                    -- Pop Legends
(4, 1), (4, 4), (4, 9), (4, 10),   -- My Favorite Songs
(5, 1), (5, 9);                    -- Best of the Beatles