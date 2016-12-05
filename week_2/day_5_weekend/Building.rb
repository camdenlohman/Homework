class Building

    def initialize()

      @array = []
      @location = 0
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

end
