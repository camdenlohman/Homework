require("minitest/autorun")
require("minitest/rg")
require_relative("./bus")
require_relative("./busstop")
require_relative("./person")

class BusSpec < MiniTest::Test

  def test_get_number

    bus1 = Bus.new(22,"location 1")
    assert_equal(22,bus1.get_number)
  end

  def test_get_location

    bus1 = Bus.new(22,"location 1")
    assert_equal("location 1",bus1.get_current_location)
  end

  def test_drive

    bus1 = Bus.new(22,"location 1")
    assert_equal("location 2",bus1.drive)
  end

  def test_passenger_count
    bus1 = Bus.new(22,"location 1")
    person1 = Person.new("pas1",27,2)
    person2 = Person.new("pas2",27,2)
    bus1.pick_up(person1)
    bus1.pick_up(person2)
    assert_equal(2,bus1.get_passenger_count)
  end

  def test_passenger_count2
    bus1 = Bus.new(22,"location 1")
    person1 = Person.new("pas1",27,2)
    person2 = Person.new("pas2",27,2)
    bus1.pick_up(person1)
    bus1.pick_up(person2)
    bus1.drop_off(person2)
    assert_equal(1,bus1.get_passenger_count)
  end

  def test_passenger_count3
    bus1 = Bus.new(22,"location 1")
    person1 = Person.new("pas1",27,2)
    person2 = Person.new("pas2",27,2)
    bus1.pick_up(person1)
    bus1.pick_up(person2)
    bus1.empty
    assert_equal(0,bus1.get_passenger_count)
  end

  def test_pick_up
    bus1 = Bus.new(22,"location 1")
    person1 = Person.new("pas1",27,2)
    person2 = Person.new("pas2",27,2)
    busstop1 = BusStop.new("location 1")
    if bus1.get_current_location == busstop1.get_name
      bus1.pick_up(person1)
      bus1.pick_up(person2)
      busstop1.remove_from_queue(person1)
      busstop1.remove_from_queue(person2)
    end
    assert_equal(2,bus1.get_passenger_count)
  end

end

def Main()
  active = true
  bus1 = Bus.new(22, "location 1")
  action = ''
  busstop1 = BusStop.new("location 1")
  busstop2 = BusStop.new("location 2")
  busstop3 = BusStop.new("location 3")
  busstop4 = BusStop.new("location 4")
  busstop5 = BusStop.new("location 5")

  new_people1 = rand(2)
  new_people2 = rand(2)
  new_people3 = rand(2)
  new_people4 = rand(2)
  new_people5 = rand(2)
  while active == true do
    action = gets.chomp
    if action == "next"
      while new_people1 > 0 do
        busstop1.add_to_queue(new_per = Person.new("Pass",rand(100),rand(4)))
        new_people1 -= 1
      end
      while new_people1 > 0 do
        busstop1.add_to_queue(new_per = Person.new("Pass",rand(100),rand(4)))
      end
      while new_people1 > 0 do
        busstop1.add_to_queue(new_per = Person.new("Pass",rand(100),rand(4)))
      end
      while new_people1 > 0 do
        busstop1.add_to_queue(new_per = Person.new("Pass",rand(100),rand(4)))
      end
      while new_people1 > 0 do
        busstop1.add_to_queue(new_per = Person.new("Pass",rand(100),rand(4)))
      end
      bus1.drive
      if bus1.get_current_location == busstop1.get_name
        bus1.pick_up(busstop1.get_queue.first)
        busstop1.remove_from_queue(busstop1.get_queue.first)
      end
      if bus1.get_current_location == busstop2.get_name
        bus1.pick_up(busstop2.get_queue.first)
        busstop2.remove_from_queue(busstop2.get_queue.first)
      end
      if bus1.get_current_location == busstop3.get_name
        bus1.pick_up(busstop3.get_queue.first)
        busstop3.remove_from_queue(busstop3.get_queue.first)
      end
      if bus1.get_current_location == busstop4.get_name
        bus1.pick_up(busstop4.get_queue.first)
        busstop4.remove_from_queue(busstop4.get_queue.first)
      end
      if bus1.get_current_location == busstop5.get_name
        bus1.pick_up(busstop5.get_queue.first)
        busstop5.remove_from_queue(busstop5.get_queue.first)
      end
      checker = bus1.get_passengers
      #see if the passengers want off here? stops = 0
    end
    if action == "exit"
      active = false
    end
  end
end

Main()