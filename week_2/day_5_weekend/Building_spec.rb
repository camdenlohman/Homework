require("minitest/autorun")
require("minitest/rg")
require_relative("Building")

class BuildingSpec < MiniTest::Test

  def test_exists

    building1 = Building.new()
    assert_equal([],building1.get_array)
  end
end
