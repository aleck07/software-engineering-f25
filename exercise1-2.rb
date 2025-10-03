class Vehicle
    def initialize(vehicle, year)
        @vehicle = vehicle
        @year = year
        @tank = "empty"
    end

    def fillVehicle()
        @tank = "full"
        puts "Filled #{@vehicle}"
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

ram2500 = Vehicle.new("Ram 2500", 2020)
bmw330 = Vehicle.new("BMW 330i xDrive", 2023)

ram2500.fillVehicle
ram2500.drive
bmw330.drive