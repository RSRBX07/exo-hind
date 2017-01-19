require_relative 'vehicle.rb'

class Plane < Vehicle  
  def initialize
    super
    @flying = false
  end

  def flying?
    @flying
  end

  def take_off # décollage
    @flying = false
  end

  def land #aterissage  
    @flying = true
  end
end


# p = Plane.new
# puts p.flying?
# puts p.take_off.inspect
# puts p.out_of_order.inspect