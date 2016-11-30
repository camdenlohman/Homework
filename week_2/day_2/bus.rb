class Bus

  def initialize(number,cl)
    @start_route = ["location 1","location 2","location 3","location 4","location 5"]
    @number = number
    @current_location = cl
    @passengers = []
    @route = @start_route
#these are private variables
end

def get_number
  return @number
end

def get_current_location
  return @current_location
end

def drive
  here = @route.index(@current_location)
  nex_t = here + 1
  @current_location = @route[nex_t]

  return @current_location
end

def pick_up(change)
  @passengers.push(change)
end

def drop_off(change)
  @passengers.delete(change)
end

def get_passenger_count
  return @passengers.count
end

def get_passengers
  return @passengers
end

def empty
  @passengers = []
end
end
