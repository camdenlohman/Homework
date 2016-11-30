class BusStop

  def initialize(name)

    @name = name
    @queue = []
#these are private variables
end

def get_name
  return @name
end

def add_to_queue(change)
  @queue.push(change)
end

def remove_from_queue(change)
  @queue.delete(change)
end

def get_queue_count
  return @queue.count
end

def get_queue
  return @queue
end

end
