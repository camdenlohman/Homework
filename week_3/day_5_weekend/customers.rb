require_relative("sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :funds, :tickets_bought

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_f
    @tickets_bought = options['tickets_bought'].to_i
  end

  def save()
    sql = "INSERT INTO Customers (name, funds,tickets_bought)
           VALUES ('#{ @name }', #{ @funds },#{tickets_bought}) RETURNING id"
    customer = SqlRunner.run( sql ).first
    @id = customer['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM Customers"
    return Customer.get_many(sql)
  end

  def self.delete_all() 
    sql = "DELETE FROM Customers"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    customers = SqlRunner.run(sql)
    customer_objects = customers.map{|customer| Customer.new( customer)}
    return customer_objects
  end

  def films()
    sql = "
      SELECT Films.* FROM Films
      INNER JOIN Tickets ON Tickets.film_id = Films.id
      WHERE cus_id = #{@id};
    "
    return Film.get_many(sql)
  end

end