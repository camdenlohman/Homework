require_relative( 'customers' )
require_relative( 'films' )
require_relative( 'tickets' )

require( 'pry' )

#test 3: test with a vengance
#showing that the program works for the advanced extensions

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

cus1 = Customer.new({ 'name' => 'Sammy Johnson',
                           'funds' => 100 })
cus1.save()
cus2 = Customer.new({ 'name' => 'Golly Rancher',
                           'funds' => 100 })
cus2.save()

film1 = Film.new({ 'title' => 'Matrix', 'price' => '5','start_time' => '2230'})
film1.save()
film2 = Film.new({ 'title' => 'Matrix', 'price' => '5','start_time' => '1230'})
film2.save()
film3 = Film.new({ 'title' => 'Matrix', 'price' => '5','start_time' => '1430'})
film3.save()
film4 = Film.new({ 'title' => 'Die Hard', 'price' => '6.8'})
film4.save()

ticket1 = Ticket.new({ 'cus_id' => cus1.id, 'film_id' => film1.id,'start_time' => film1.time})
ticket1.save()
ticket2 = Ticket.new({ 'cus_id' => cus2.id, 'film_id' => film2.id,'start_time' => film2.time })
ticket2.save()
ticket3 = Ticket.new({ 'cus_id' => cus1.id, 'film_id' => film2.id,'start_time' => film2.time})
ticket3.save()
ticket4 = Ticket.new({ 'cus_id' => cus2.id, 'film_id' => film2.id,'start_time' => film2.time})
ticket4.save()
ticket5 = Ticket.new({ 'cus_id' => cus1.id, 'film_id' => film3.id,'start_time' => film3.time})
ticket5.save()
ticket6 = Ticket.new({ 'cus_id' => cus2.id, 'film_id' => film4.id,'start_time' => film4.time})
ticket6.save()

binding.pry
nil