require_relative("sql_runner")

class Ticket

  attr_reader :id
  attr_accessor :cus_id,:film_id

  def initialize( options )
    @id = options['id'].to_i
    @cus_id = options['cus_id'].to_i
    @film_id = options['film_id'].to_i
    @start_time = options['start_time'].to_i
  end

  def save()
    size_checker = "SELECT * FROM Films WHERE id = #{@film_id};"
    films = SqlRunner.run(size_checker)
    answer_array = films.map{|film| Film.new( film)}

    check = answer_array[0].audience_size

    
    
    sql = "

    UPDATE Customers SET funds = (funds-(SELECT price FROM Films WHERE id = #{@film_id}))
    WHERE id = #{@cus_id};


    UPDATE Customers SET tickets_bought = (tickets_bought+1) WHERE id = #{@cus_id};

    UPDATE Films SET audience_size = (audience_size+1) WHERE id = #{@film_id};
    
    INSERT INTO Tickets (cus_id,film_id) VALUES ('#{ @cus_id }','#{@film_id}')RETURNING id;

    
    "
    if (check <= 100)
      ticket = SqlRunner.run( sql ).first
      @id = ticket['id'].to_i
    end
  end

  def self.all()
    sql = "SELECT * FROM Tickets"
    return Ticket.get_many(sql)
  end

  def self.delete_all() 
    sql = "DELETE FROM Tickets"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    tickets = SqlRunner.run(sql)
    ticket_objects = tickets.map{|ticket| Ticket.new( ticket)}
    return ticket_objects
  end
  
  def film()
    sql = "SELECT * FROM Films WHERE id = #{@film_id};"
    film = SqlRunner.run(sql).first
    return Film.new(film)
  end

  def customer()
    sql = "SELECT * FROM Customers WHERE id = #{@cus_id};"
    customers = SqlRunner.run(sql).first
    return Customer.new(customer)
  end

end