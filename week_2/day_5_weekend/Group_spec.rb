require("minitest/autorun")
require("minitest/rg")
require_relative("Group")
require_relative ("People")

class GroupSpec < MiniTest::Test

  def test_get_name_from_group

    group1 = Group.new()
    group1.make_new_group_test(true)

    #print group1.get_array
    assert_equal("Camden",group1.get_array_index(3).get_fn)
  end

  def test_group_size
    group1 = Group.new()
    group1.make_new_group()

    show_this = group1.get_array_size
print show_this
  end
end
