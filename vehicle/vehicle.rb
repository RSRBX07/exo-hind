class Vehicle 

  attr_reader :position
  attr_reader  :out_of_order
  def initialize 
    @position = "Roubaix"
    @out_of_order = false
  end 
  def move(destination) 
    @position = destination
    puts " I moving "
  end



end