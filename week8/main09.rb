class Employee
  def prepare(bike)
    bike.prepare
  end
end

class BmxBike
  def prepare
    clean
  end
  def clean
    puts 'Cleaning...'
  end
end

class RoadBike
  def prepare
    lubricate_gears
  end
  def lubricate_gears
    puts 'Lubricating gears...'
  end
end

class MountainBike
  def prepare
    adjust_suspension
  end
  def adjust_suspension
    puts 'Adjusting suspension...'
  end
end

class Tricycle
  def prepare
    adjust_seat
  end
  def adjust_seat
    puts 'Adjusting seat...'
  end
end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end