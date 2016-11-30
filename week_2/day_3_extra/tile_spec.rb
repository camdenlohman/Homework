require("minitest/autorun")
require("minitest/rg")
require_relative("tile")

class TileSpec < MiniTest::Test

  def test_type

    tile1 = Tile.new(1,0)
    assert_equal(0,tile1.get_type)
  end

  def test_destination

    tile1 = Tile.new(1,0)
    tile1.change_destination(27)
    assert_equal(27,tile1.get_destination)
  end
end
