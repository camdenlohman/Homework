DROP TABLE IF EXISTS Music_Collection;
DROP TABLE IF EXISTS Artists;

CREATE TABLE Artists (
  id SERIAL8 primary key,
  artist VARCHAR(255)
);

CREATE TABLE Music_Collection (
  id SERIAL8 primary key,
  album_title VARCHAR(255),
  artist_id INT4 references Artists(id)
);
