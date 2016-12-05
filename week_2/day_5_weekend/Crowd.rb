require_relative ("Group")
class Crowd

  def initialize()

    @array = []
    @empty_array = []
    @location = 0
#these are private variables
end

def add_to_array(add)
  @array.push(add)
end

def add_to_empty_array(add)
  @empty_array.push(add)
end

def get_empty_array_first
  first = @empty_array.first
  @empty_array.shift
  return first
end

def get_array_index(search)
  return @array.at(search)
end

def get_array
  return @array
end

def get_empty_array
  return @empty_array
end

# def delete_from_array(num)
#   @array.at(num) = nil
# end
end
