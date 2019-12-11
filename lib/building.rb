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

  def renter_with_highest_rent
    amount = 0
    renter = nil
    @units.each do |unit|
      if unit.renter != nil
        if unit.monthly_rent > amount
            amount = unit.monthly_rent
            renter = unit.renter
          end
        end
      end
    return renter
  end
end
