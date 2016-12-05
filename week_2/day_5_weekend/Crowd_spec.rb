require("minitest/autorun")
require("minitest/rg")
require_relative("Crowd")
require_relative("Group")
require_relative ("People")

class CrowdSpec < MiniTest::Test

  def test_find_one_in_the_crowd

    crowd1 = Crowd.new()
    
    group1 = Group.new()
    group1.make_new_group()

    group2 = Group.new()
    group2.make_new_group_test(true)

    group3 = Group.new()
    group3.make_new_group()

    crowd1.add_to_array(group1)
    crowd1.add_to_array(group2)
    crowd1.add_to_array(group3)

    assert_equal("Camden",crowd1.get_array_index(1).get_array_index(3).get_fn)

    # puts crowd1
    # puts ""
    # puts crowd1.get_array
    # puts ""
    # puts crowd1.get_array_index(0).get_array
    # puts crowd1.get_array_index(1).get_array
    # puts crowd1.get_array_index(2).get_array
  end

  def test_find_one_in_the_crowd_replacing

    crowd1 = Crowd.new()
    
    group1 = Group.new()
    group1.make_new_group()

    group2 = Group.new()
    group2.make_new_group()

    group3 = Group.new()
    group3.make_new_group()

    crowd1.add_to_array(group1)
    crowd1.add_to_array(group2)
    crowd1.add_to_array(group3)

    test_change = 2

    crowd1.add_to_empty_array(test_change)

    crowd1.get_array_index(test_change).replace_empty

    array_index = crowd1.get_empty_array_first

    group4 = Group.new()
    group4.make_new_group_test(true)


    crowd1.get_array_index(array_index).replacer(group4.get_array)


    assert_equal("Camden",crowd1.get_array_index(2).get_array_index(3).get_fn)

    # puts crowd1
    # puts ""
    # puts crowd1.get_array
    # puts ""
    # puts crowd1.get_array_index(0).get_array
    # puts crowd1.get_array_index(1).get_array
    # puts crowd1.get_array_index(2).get_array
    # print crowd1.get_array_index(1).get_array
    # print crowd1.get_array_index(2).get_array
  end
end
