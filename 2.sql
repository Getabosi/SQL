SELECT title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT title, duration
FROM track
WHERE duration >= 210;

SELECT title, release_year
FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE LOWER(title) ILIKE 'my %'
   OR LOWER(title) ILIKE '% my'
   OR LOWER(title) ILIKE '% my %'
   OR LOWER(title) ILIKE 'my'
   OR LOWER(title) ILIKE 'мой %'
   OR LOWER(title) ILIKE '% мой'
   OR LOWER(title) ILIKE '% мой %'
   OR LOWER(title) ILIKE 'мой';