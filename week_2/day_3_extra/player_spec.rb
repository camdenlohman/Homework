require("minitest/autorun")
require("minitest/rg")
require_relative("player")
require_relative("die")
require_relative("tile")
require_relative("board")

class PlayerSpec < MiniTest::Test

  def test_move
    player1 = Player.new()
    assert_equal(4,player1.move(4))
  end

  def test_destination
    player1 = Player.new()
    tile4 = Tile.new(4,1)
    tile4.change_destination(27)
    player1.move(4)
    if tile4.get_type == 1 && player1.get_location == tile4.get_location
      player1.warp(tile4.get_destination)
    end
    assert_equal(27,player1.tile_destination(tile4.get_destination))
  end

  
end



