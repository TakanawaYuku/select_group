CREATE TABLE if not exists artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

 CREATE TABLE if not exists albums (
 	id SERIAL PRIMARY KEY,
 	name VARCHAR(50) NOT NULL,
 	release_year VARCHAR(4)
);


CREATE TABLE if not exists tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTERVAL MINUTE TO SECOND,
	albums_id INTEGER REFERENCES albums(id) 
);


CREATE TABLE if	not	exists genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);


CREATE TABLE if not exists collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	release_year VARCHAR(4)
);


CREATE TABLE if	not	exists	artists_genres (
	id SERIAL PRIMARY KEY,
	artists_id INTEGER REFERENCES Artists(id),
	genres_id INTEGER REFERENCES Genre(id),
	CONSTRAINT artists_genres_pk PRIMARY KEY (artists_id, genres_id)  
); 


CREATE TABLE if not EXISTS artists_albums (
	id SERIAL PRIMARY KEY,
	artists_id INTEGER REFERENCES artists(id),
	albums_id INTEGER REFERENCES albums(id),
	CONSTRAINT artists_albums_pk PRIMARY KEY (artists_id, albums_id)
);


CREATE TABLE if not exists tracks_collections (
	id SERIAL PRIMARY KEY,
	tracks_id INTEGER REFERENCES tracks(id),
	collections_id INTEGER REFERENCES collections(id),
	CONSTRAINT tracks_collections_pk PRIMARY KEY (tracks_id, collections_id)
);