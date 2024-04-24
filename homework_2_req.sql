CREATE TABLE musis_genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE musicians (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE genre_musician (
    music_genre_id INTEGER NOT NULL REFERENCES musis_genres(id),
    musician_id INTEGER NOT NULL REFERENCES musicians(id)
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INTEGER(4) CHECK (year_of_release >= 1649)
);

CREATE TABLE musician_album (
    musician_id INTEGER NOT NULL REFERENCES musicians(id),
    album_id INTEGER NOT NULL REFERENCES albums(id),
);

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES albums(id),
    name VARCHAR(60) NOT NULL,
    duration INTEGER CHECK (duration <= 48212)
);

CREATE TABLE collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INTEGER(4) CHECK (year_of_release >= 1649)
);

CREATE TABLE song_collection (
    song_id INTEGER NOT NULL REFERENCES songs(id),
    collection_id INTEGER NOT NULL REFERENCES collections(id)
);