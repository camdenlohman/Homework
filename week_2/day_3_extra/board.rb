class Board

  def initialize(size)

    @size = size
    
  #these are private variables
end

def get_size
  return @size
end

def add_tile(tile,array)
  array[:tile] << tile
end
# tile = {name: "tile1", location: num, type: 0}

  # def make_board(hash)
  #   for num in 0..@size do
  #     add_tile(num)
  #   end
  # end

  def add_player(player,array)
    array[:name] << player
  end
  # tile = {name: "tile1", location: num, type: 0}

    # def make_board(hash)
    #   for num in 0..@size do
    #     add_tile(num)
    #   end
    # end

    def make_hash(name,location)
      tile = 
      {
        name: name,
        location: location,
        type: 0,
        destination: 0
      }
    end

    def make_hash2(name,input,number, location)
      player = 
      {
        name: name,
        input: input,
        number: number,
        location: location
      }
    end

    def hash_size(array)
      return array.length
    end

    def get_hash(array)
      return array
    end
  end
