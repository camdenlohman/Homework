require('pg')
require_relative('Artists')
require_relative('./db/sql_runner')

class Music_Collection

  attr_accessor :album_title,:artist_id
#these are public variables
attr_reader :id
def initialize(options)
  @id = options['id'].to_i if options['id'].to_i
  @album_title = options['album_title']
  @artist_id = options['artist_id'].to_i

#these are private variables
end

def artist()
  sql = "SELECT * FROM Artists WHERE id = #{@artist_id};"
  artist = SqlRunner.run( sql )[0]
  return Artists.new( artist )
end

def save()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = 
  "
  INSERT INTO Music_Collection
  (album_title, artist_id)
  VALUES
  ('#{@album_title}',#{@artist_id})
  RETURNING *;
  "
  @id = db.exec(sql)[0]['id'].to_i
  db.close()
end

def self.all()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = 
  "
  SELECT * FROM Music_Collection;
  "
  all = db.exec(sql)
  db.close()
  return all.map{|all| Music_Collection.new(all)}
end

def self.delete_all()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = "DELETE FROM Music_Collection;"
  db.exec(sql)
  db.close()
end

def delete()
  db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
  sql = 
  "
  DELETE FROM Music_Collection where id = #{@id};
  "
  db.exec(sql)
  db.close()
  end

  def update()
    db = PG.connect({ dbname: 'Music_Collection', host: 'localhost'})
    sql = 
    "
    UPDATE Music_Collection
    SET (album_title,artist) =
    ('#{@album_title}', '#{@artist}')
    WHERE id = #{@id};
    "
    db.exec(sql)
    db.close()
  end
end
