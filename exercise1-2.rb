class Car
  def initialize(vehicle, year)
    @vehicle = vehicle
    @year = year
    @tank = "empty"
  end

  def fillVehicle()
    @tank = "full"
    puts "Filled #{@vehicle} with gasoline."
  end

  def drive()
    if @tank == "empty"
      puts "Your #{@vehicle} is out of gas. You should probably call for someone to bring you a jerry can."
    else
      @tank = "empty"
      puts "You drove your #{@vehicle} for as long as you could, and ran out of gas while driving over the pass."   
    end
  end
end

class Truck < Car
  def initialize(vehicle, year, towingCapacity)  
    @vehicle = vehicle
    @year = year
    @towingCapacity = towingCapacity  
    @tank = "empty"
  end

  def fillVehicle()
    @tank = "full"
    puts "Filled #{@vehicle} with diesel."
  end

  def getTowingCapacity()
    puts "Towing Capacity: #{@towingCapacity}lbs."
  end
end
ram2500 = Truck.new("Ram 2500", 2020, 20000)
bmw330 = Car.new("BMW 330i xDrive", 2023)

ram2500.fillVehicle
ram2500.drive
ram2500.getTowingCapacity
bmw330.drive