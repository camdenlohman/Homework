class Tile

  def initialize(location,type)

    @location = location
    @type = type
    @destination = 0
  #these are private variables
  #tile types; 0 = normal: 1 = warp: 2 = end/win
  end

  def get_type
    return @type
  end

  def change_destination(change)
    @destination = change
  end

  def change_type(change)
    @type = change
  end

  def get_destination
    return @destination
  end

  def get_location
    return @location
  end


end
