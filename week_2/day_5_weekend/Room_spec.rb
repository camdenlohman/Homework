require("minitest/autorun")
require("minitest/rg")
require_relative("Room")
require_relative("Group")
require_relative("Songs")

class RoomSpec < MiniTest::Test

  def test_exists

    room1 = Room.new(8)
    assert_equal(8,room1.get_room_size)
  end

  def test_room_taken
    room1 = Room.new(20)
    group1 = Group.new()
    group1.make_new_group_test(true)
    group_size = group1.get_array_size
    room_size = room1.get_room_size

    if group_size <= room_size
      room1.take_room(group1)
      test_size = room1.get_array.count
      group1.set_location(0)
    end
    assert_equal(1,test_size)
    assert_equal(0, group1.get_location)
  end

  def test_room_empty
    room1 = Room.new(20)
    group1 = Group.new()
    group1.make_new_group_test(true)
    group_size = group1.get_array_size
    room_size = room1.get_room_size

    if group_size <= room_size
      room1.take_room(group1)
      test_size = room1.get_array.count
      group1.set_location(0)
    end

    room1.free_room
    group1.replace_empty

    test_size = room1.get_array.count

    assert_equal(0,test_size)
  end

  def test_add_song
    songs1 = Songs.new()
    tester = songs1.get_song(0)

    room1 = Room.new(20)
    


    assert_equal(["Crazy Train",2,"Black Sabbath"],tester)
  end

  def test_remove_song
    songs1 = Songs.new()

    room1 = Room.new(20)
    
    room1.remove_first_song

    tester = room1.get_song_list

    assert_equal([],tester)
  end

end
