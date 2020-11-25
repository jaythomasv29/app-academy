class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = [] # initialize as default vlaue
  end

  # getter
  def capacity
    @capacity
  end

  # getter occupants
  def occupants
    @occupants
  end

  def full?
    return false if @occupants.length < @capacity
    return true if @occupants.length == @capacity
  end

  def available_space
    return @capacity - @occupants.length
  end

  def add_occupant(name)
    # self.full? ? return false : @occupants << name return true
    if self.full?
      return false
    else
      @occupants << name
      return true
    end
  end
end
