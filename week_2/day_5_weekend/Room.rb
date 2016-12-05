class Room

  def initialize(size)

    @array = []
    @empty = true
    @capacity = size
    @time_left = 0
    @song_array = []
#these are private variables
end

def get_room_size
  return @capacity
end

def take_room(group)
  @array.push(group)
  @empty = false
end

def free_room
  @array = []
  @empty = true
end

def get_array
return @array
  end

  def add_song(change)
    @song_array.push(change)
  end

  def remove_first_song
@song_array.shift()
  end

  def clear_song_list
@song_array = []
  end

    def get_song_list
  return @song_array
    end
end
