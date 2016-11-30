class Person

  def initialize(name,age,stops)

    @name = name
    @age = age
    @number_of_stops = stops
#these are private variables
end

def get_name
  return @name
end
def get_age
  return @age
end

def journey
  return @number_of_stops
end
end
