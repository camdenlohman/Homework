require_relative( 'customers' )
require_relative( 'films' )
require_relative( 'tickets' )

require( 'pry' )

#test 2: test harder
#showing that the program works for the basic extensions

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

cus1 = Customer.new({ 'name' => 'Sammy Johnson',
                           'funds' => 100 })
cus1.save()
cus2 = Customer.new({ 'name' => 'Golly Rancher',
                           'funds' => 100 })
cus2.save()

film1 = Film.new({ 'title' => 'Matrix', 'price' => '5'})
film1.save()
film2 = Film.new({ 'title' => 'Die Hard', 'price' => '6.8'})
film2.save()

ticket1 = Ticket.new({ 'cus_id' => cus1.id, 'film_id' => film1.id})
ticket1.save()
ticket2 = Ticket.new({ 'cus_id' => cus2.id, 'film_id' => film2.id })
ticket2.save()
ticket3 = Ticket.new({ 'cus_id' => cus1.id, 'film_id' => film2.id})
ticket3.save()

binding.pry
nil