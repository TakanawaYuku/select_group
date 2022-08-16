/*1. Запроc количество исполнителей в каждом жанре*/
SELECT name AS Жанр, COUNT(genre_id) AS Количество_Исполнителей 
FROM 
    genres
    INNER JOIN artists_genres USING (genre_id)
GROUP BY 1
ORDER BY 2, 1;


/*2. Запрос количество треков, вошедших в альбомы 2019-2020 годов*/
SELECT COUNT(tracks_id) AS Количество_треков
FROM
    tracks
    INNER JOIN albums USING (albums_id)
WHERE release_year BETWEEN 2019 AND 2020


/*3. Запрос средняя продолжительность треков по каждому альбому*/
SELECT albums_id, albums.name, durat_song('second',AVG(duration)) AS Средняя_продолжительность
FROM 
    tracks
    INNER JOIN albums USING (albums_id)
GROUP 1, 2
ORDER BY 3;

/*4. Запрос все исполнители, которые не выпустили альбомы в 2020 году*/
SELECT artists_id, artists.name AS Исполнители
FROM artists
WHERE artists_id NOT IN (
SELECT DISTINCT artists_id
FROM
    artists
    INNER JOIN artists_albums USING (artists_id)
    INNER JOIN albums USING (albums_id)
    WHERE release_year = 2020    
)
ORDER BY 1;

/*5. Запрос названия сборников, в которых присутствует конкретный исполнитель*/
SELECT collections_id, collections.name AS Сборник
FROM 
    artists
    INNER JOIN artists_albums USING (artists_id) 
    INNER JOIN albums USING (albums_id)
    INNER JOIN tracks USING (albums_id)
    INNER JOIN tracks_collections USING (tracks_id)
    INNER JOIN collections USING (collections_id)
WHERE collections.name = 'Sum 41'
ORDER 1;    


/*6 Запрос название альбомов, в которых присутствуют исполнители более 1 жанра*/
SELECT albums_id, albums.name AS Альбом
FROM 
    albums
    INNER JOIN artists_albums USING (albums_id)
    INNER JOIN artists USING (artists_id)
WHERE artists_id IN (
    SELECT artists_id
    FROM artists_genres
    GROUP BY artists_id
    HAVING COUNT(*) > 1
)    
ORDER BY 1;

/*7. Запрос наименование треков, которые не входят в сборники*/
SELECT tracks_id, name
FROM
    tracks
    LEFT JOIN tracks_collections USING (tracks_id)
WHERE collections_id IS NULL
ORDER BY 1;


/*8. Запрос исполнителя(-ей), написавшего самый короткий по продолжительности трек*/
SELECT artists_id artists.name, duration AS Продолжительность
FROM
    tracks
    INNER JOIN albums USING (albums_id)
    INNER JOIN artists_albums USING (albums_id)
    INNER JOIN artists USING (artists_id)
WHERE duration = (
    SELECT MIN(duration) FROM tracks
);

/*9. Запрос название альбомов, содержащих наименьшее количество треков*/
SELECT albums_id, albums.name, COUNT(*) AS Количество_треков_наименьшее
FROM 
    albums
    INNER JOIN tracks USING (albums_id)
    GROUP BY 1, 2
    HAVING COUNT(*) = (
        SELECT COUNT(*)
        FROM albums
            INNER JOIN tracks USING (albums_id)
        GROUP BY albums_id
            ORDER BY 1
            LIMIT 1        
    );   
