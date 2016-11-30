require("minitest/autorun")
require("minitest/rg")
require_relative("board")
require_relative("tile")

class BoardSpec < MiniTest::Test

  def test_size

    board1 = Board.new(100)
    assert_equal(100,board1.get_size)
  end

  def test_make_board
    @hash_board = {
      tile:[

      ]
    }
    board1 = Board.new(100)
    for num in 0..board1.get_size do
      name = "tile"
      name += num.to_s
      name = Tile.new(num,0)
      new_hash = board1.make_hash(name,num)
      puts new_hash
      board1.add_tile(new_hash,@hash_board)
    end
    #puts board1.get_hash(@hash_board)
    assert_equal(101,board1.hash_size(@hash_board[:tile]))
  end

end
