# I am using Interface segregation principle which divides 2 modules rather than one generic module that include start,stop engine and drive
# Because the start,stop engine won't be used by bicycle so it can only use drive method.

module EngineStartable
  def start_engine
    raise NotImplementedError, 'You must implement the start_engine method'
  end
  
  def stop_engine
    raise NotImplementedError, 'You must implement the stop_engine method'
  end
end
  
module Drivable
  def drive
    raise NotImplementedError, 'You must implement the drive method'
  end
end
  
class Car
  include EngineStartable
  include Drivable
  
  def start_engine
    puts 'Starting the car engine'
  end
  
  def stop_engine
    puts 'Stopping the car engine'
  end
  
  def drive
    puts 'Driving the car'
  end
end
  
class Bicycle
  include Drivable
  #Here I am using only Drivable as bicycle can't have engines 
  
  def drive
    puts 'Riding the bicycle'
  end
end
