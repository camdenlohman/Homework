require("minitest/autorun")
require("minitest/rg")
require_relative("People")

class PeopleSpec < MiniTest::Test
  
  def test_get_fn

    people1 = People.new(0,0,true)
    assert_equal("Camden",people1.get_fn)
  end

  def test_get_ln

    people1 = People.new(0,0,true)
    assert_equal("Lohman",people1.get_ln)
  end

  def test_get_fav_song
    people1 = People.new(0,0,false)
    tester = people1.get_fav_song

    if tester <=200
      tester2 = true
    end

    assert_equal(true,tester2)
  end
end
