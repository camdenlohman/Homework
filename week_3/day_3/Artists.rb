require('pg')
require_relative('./db/sql_runner')

class Artists

  attr_reader :id
  attr_accessor :artist
#these are public variables
def initialize(options)
  @id = options['id'].to_i if options['id']
  @artist = options['artist']

#these are private variables
end

def albums()
  sql = "SELECT * FROM Music_Collection WHERE artist_id = '#{@id}';"
  albums = SqlRunner.run(sql)
  return albums.map { |album| Music_Collection.new(album) }
end

def save()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = 
  "
  INSERT INTO Artists
  (artist)
  VALUES
  ('#{@artist}')
  RETURNING *;
  "
  @id = db.exec(sql)[0]['id'].to_i
  db.close()
end

def self.all()
  sql = 
  "
  SELECT * FROM Artists;
  "
  artists = SqlRunner.run(sql)
  return artists.map{|artist| Artists.new(artist)}
end

def self.delete_all()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = "DELETE FROM Artists;"
  db.exec(sql)
  db.close()
end

def delete()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = 
  "
  DELETE FROM Artists where id = #{@id};
  "
  db.exec(sql)
  db.close()
  end

  def update()
    db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
    sql = 
    "
    UPDATE Artists
    SET (artist) =
    ('#{@artist}')
    WHERE id = #{@id};
    "
    db.exec(sql)
    db.close()
  end
end
