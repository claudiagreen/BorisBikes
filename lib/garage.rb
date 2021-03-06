class Garage

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
      @capacity = capacity
      @bikes = []
    end

  def fix
     @bikes.each { |bike| bike.working }
  end

  def pickup(bike)
    return error 'garage is full' if full?
    @bikes << bike
  end

  def unload
  @bikes.pop
  end


private

  def full?
    @bikes.size >= @capacity
  end

  def empty?
    @bikes.size == 0
  end

end
