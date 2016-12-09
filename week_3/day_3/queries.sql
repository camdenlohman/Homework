SELECT al.album_title AS al_name, ar.artist AS ar_name
FROM Music_Collection al
INNER JOIN artists ar
ON ar.id = al.artist_id;