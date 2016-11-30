class Player

  def initialize()

    @number = 0
    @location = 0
  #these are private variables
  end

  def get_location
    return @location
  end

  def move(change)
    return @location += change
  end

  def warp(change)
    @location = change
  end

  def tile_destination(change)
    @location = change
  end
end
