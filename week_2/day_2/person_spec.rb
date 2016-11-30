require("minitest/autorun")
require("./person")

class PersonSpec < MiniTest::Test

  def test_get_name
    person1 = Person.new("passenger",27,2)
    assert_equal("passenger",person1.get_name)
  end
  def test_get_age
    person1 = Person.new("passenger",27,2)
    assert_equal(27,person1.get_age)
  end

  def test_journey

    person1 = Person.new("passenger",27,2)
    assert_equal(2,person1.journey)
  end
end
