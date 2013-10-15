class DockingStation

  def initialize bikes = [], capacity = 5
    @bikes = bikes
    @capacity = capacity
  end

  def accept_from_customer bike
    @bikes << bike unless full?
  end

  def has_bikes?
    true if count_bikes > 0
  end

  def release_to (person)
    @bikes.pop
  end

  def count_bikes 
    @bikes.count
  end

  def full?
    count_bikes >= @capacity
  end

end