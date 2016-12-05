
require_relative ("People")

class Group

  def initialize()

    roll = 0
    while roll <= 5 do
      roll = rand(12)
    end

    @array = []
    @location = 0
    @size = roll
#these are private variables
end

def add_to_array(add)
  @array.push(add)
end

def get_array_index(search)
  return @array.at(search)
end

def get_array
  return @array
end

def make_new_group_test(tester)
  if tester == true
    @size = 5
  end
  for num in 1..@size
    if num == 4
      people = People.new(0,0,true)
    else
      people = People.new(0,0,false)
    end
    @array.push(people)
  end
end

def make_new_group()
  for num in 1..@size
    people = People.new(0,0,false)
    @array.push(people)
  end
end

def get_array_size
  return @array.count
end

def replace_empty
  @array.replace([])
end

def replacer(change)
  @array.replace(change)
end

def set_location(change)
  @location = change
end

def get_location
return @location
  end
end
