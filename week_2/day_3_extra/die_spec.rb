require("minitest/autorun")
require("minitest/rg")
require_relative("die")

class DieSpec < MiniTest::Test

  def test_roll
    die1 = Die.new
    answer = 0
    loop_max = 6
    result = die1.roll

    for num in 0..loop_max do
      if num = result
        answer = num
      end
      assert_equal(answer,result)
      puts answer
    end
  end
end