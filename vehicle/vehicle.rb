class Vehicle 

  attr_reader :position
  attr_reader  :out_of_order

  def self.new
puts "I'm starting creation of a new vehicle"
super
puts "I finish creation of a new vehicle "
  end 

  def initialize 
  puts "I'm starting initilization my instance of a new vehicle"
    @out_of_order = false
    puts "I finish initilization my instance of a new vehicle""
  end 

  def move(destination) 
    @position = destination
    puts " I moving "
  end



end