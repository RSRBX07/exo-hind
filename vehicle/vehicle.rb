class Vehicle 

  @@counter = 0

  attr_reader :position
  attr_reader  :out_of_order

  # def self.new
  #     puts "I'm starting creation of a new vehicle"
  #     super
  #     puts "I finish creation of a new vehicle "
  # end 
  
  # return the number of existing objects (in memory)
  # open irb
  # Vehicle.count
  #  #=>0
  # Vehicle.new
  # Vehicle.count
  #  #=>1
  
  def initialize 
    
      puts "I'm starting initilization my instance of a new vehicle"
      @out_of_order = false
      puts "I finish initilization my instance of a new vehicle"
      
      @@counter += 1
      
  end 

  def move(destination) 
      @position = destination
      puts " I moving "
  end
  
  def self.counter
      @@counter
  end
end