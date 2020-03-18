require_relative 'tail_pack'

class BmxBike

  attr_accessor :tail_pack, :weekly_rate, :daily_rate, :hourly_rate

  def initialize
    @tail_pack = TailPack.new
    @weekly_rate = 70
    @daily_rate = 20
    @hourly_rate = 5
  end

  def clean
    puts "Cleaning..."
  end

  def adjust_seat
    puts "Adjusting seat..."
  end

  def price
    weekly_rate + @tail_pack.cost
  end

end
