require_relative 'pannier'

class RoadBike
  
  attr_accessor :panniers, :daily_rate, :weekly_rate

  def initialize
    @panniers = [Pannier.new, Pannier.new]
    @daily_rate = 15
    @weekly_rate = 105
  end

  def clean
    puts "Cleaning..."
  end

  def lubricate_gears
    puts "Lubricating gears..."
  end

  def panniers_price
    total = 0

    @panniers.each do |p|
      total += p.price
    end
    return total
  end

  def price
    return weekly_rate + self.panniers_price()
  end

end
