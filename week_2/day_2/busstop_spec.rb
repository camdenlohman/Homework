require("minitest/autorun")
require_relative("./busstop")
require_relative("./person")

class BusStopSpec < MiniTest::Test

  def test_get_name

  busstop1 = BusStop.new("location 1")
  assert_equal("location 1",busstop1.get_name)
  end

  def test_get_queue

  busstop1 = BusStop.new("location 1")
  person1 = Person.new("per1",27,2)
  person2 = Person.new("per2",27,2)
  busstop1.add_to_queue(person1)
  busstop1.add_to_queue(person2)
  assert_equal(2,busstop1.get_queue_count)
  end

  def test_remove_from_queue

  busstop1 = BusStop.new("location 1")
  person1 = Person.new("per1",27,2)
  person2 = Person.new("per2",27,2)
  busstop1.add_to_queue(person1)
  busstop1.add_to_queue(person2)
  busstop1.remove_from_queue(person2)
  assert_equal(1,busstop1.get_queue_count)
  end
end
