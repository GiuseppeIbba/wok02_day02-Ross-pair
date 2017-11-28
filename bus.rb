class Bus



  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

def drive
  return "Brum Brum"
end

def passengers_aboard()
  return @passengers.size
end

def pick_up(passenger)
   @passengers.push(passenger)
end

def drop_off(passenger)
  @passengers.shift(passenger) if @passengers != 0
end

end
