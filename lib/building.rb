class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rents = 0
    @units.each do |unit|
      rents += unit.monthly_rent
    end
    average = rents / @units.count.to_f
    average
  end
end
