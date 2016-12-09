require_relative("sql_runner")

class Film 

  attr_reader :id
  attr_accessor :title, :price, :audience_size , :time

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_f
    @audience_size = options['audience_size'].to_i
    @start_time = options['start_time'].to_i
  end

  def save()
    sql = "INSERT INTO Films (title, price,audience_size,start_time) VALUES ('#{ @title }', #{ @price },#{@audience_size},#{@start_time}) RETURNING id"
    film = SqlRunner.run( sql ).first
    @id = film['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM Films"
    return Film.get_many(sql)
  end

  def self.delete_all() 
    sql = "DELETE FROM Films"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    films = SqlRunner.run(sql)
    film_objects = films.map{|film| Film.new( film)}
    return film_objects
  end

  def customers()
    sql = "
      SELECT Customers.* FROM Customers
      INNER JOIN Tickets ON Tickets.cus_id = Customers.id
      WHERE film_id = #{@id};
    "
    return Customer.get_many(sql)
  end

  def self.most_sold_movie()
    sql = "SELECT * FROM Films"
    films = SqlRunner.run(sql)
    answer_array = films.map{|film| Film.new( film)}

    film2 = answer_array.sort_by {|film| film.audience_size}
    film3 = film2.reverse
    film4 = film3.first
    return film4
  end
end