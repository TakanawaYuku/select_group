/*Исполнители*/
INSERT INTO artists (name) VALUES
('Hollywood Undead'),
('Red Hot Chili Peppers'),
('Sum 41'),
('The Offspring'),
('Lumen'),
('Metallica'),
('Blink-182'),
('AC/DC');


/*Жанры*/
INSERT INTO genres (name) VALUES
('Alternative'),
('Punk rock'),
('Hard rock'),
('Pop punk'),
('Rap rock');


/*Исполнители и жанры*/
INSERT INTO artists_genres (artists_id, genres_id) VALUES
('1, 5'),
('2, 2'),
('3, 4'),
('4, 2'),
('5, 1'),
('6, 3'),
('7, 2'),
('8, 3');


/*Альбомы и время выхода*/
INSERT INTO albums(name, release_year) VALUES
('American Tragedy', '2011'),  /*Hollywood Undead*/
('Unlimited Love', '2022'),   /*Red Hot Chili Pepper*/
('13 Voices', '2016'),  /*Sum 41*/
('Days Go By', '2012'),  /*The Offspring*/
('Без консервантов', '2003'), /*Lumen*/
('Seattle89', '2018'), /*Metallica*/
('Nine', '2019'), /*Blink-182*/
('Power Up', '2020'); /*AC/DC*/


/*Исполнители и альбомы*/
INSERT INTO artists_albums (artists_id, albums_id) VALUES
('1, 1'),
('2, 2'),
('3, 3'),
('4, 4'),
('5, 5'),
('6, 6'),
('7, 7'),
('8, 8');


/*Песни*/
INSERT INTO tracks (albums_id, name, duration) VALUES
('1', 'My Town', '3:27'), 		/*Hollywood Undead*/
('1', 'Lights Out', '3:51'),	/*Hollywood Undead*/	
('2', 'Black Summer', '3:53'),		/*Red Hot Chili Peppers*/
('2', 'Poster Child', '5:19'),		/*Red Hot Chili Peppers*/
('3', 'Fake My Own Death', '3:14'),		/*Sum 41*/
('3', '13 Voices', '3:37'),			/*Sum 41*/
('4', 'Days Go By', '4:02'),		/*The Offspring*/
('4', 'Hurting As One', '2:50'),		/*The Offspring*/
('5', 'Мое время', '2:22'),				/*Lumen*/
('5', 'Космонавт', '2:58'),			/*Lumen*/
('6', 'Whiplash', '4:20'),			/*Metallica*/
('6', 'Breadfan', '4:23'),			/*Metallica*/
('7', 'The First Timeт', '2:27'),			/*Blink-182*/
('7', 'Heaven', '3:17'),			/*Blink-182*/
('8', 'Realize' , '3:37'),			/*AC/DC*/
('8', 'Demon Fire', '3:30');		/*AC/DC*/


/*Сборники*/
INSERT INTO collections (name, release_year) VALUES
('My playlist', '2015'),
('Playing list', '2012'),
('Work list', '2019'),
('Dancing list', '2017'),
('For relaxation', '2020'),
('For friends', '2021'),
('For sleep', '2018'),
('For a walk', '2022');


/*Коллекция песен*/
INSERT INTO tracks_collections (tracks_id, collections_id) VALUES
('1', '7'),
('1', '1'),
('2', '3'),
('2', '8'),
('3', '1'),
('3', '5'),
('4', '6'),
('4', '2'),
('5', '6'),
('5', '6'),
('6', '5'),
('6', '8'),
('7', '2'),
('7', '2'),
('8', '4'),
('8', '4');





