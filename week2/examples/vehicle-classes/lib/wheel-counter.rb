require_relative('motorcycle')
require_relative('sedan')
require_relative('hoverboard')
require_relative('unicycle')
require_relative('18-wheeler')

class WheelCounter
	
	def initialize(array_of_vehicles)
		@array_of_vehicles = array_of_vehicles
	end

	def count_wheels
		total = 0
		@array_of_vehicles.each do | vehicle |
			total += vehicle.wheels
		end
		return "The total number of wheels is: #{total}"
	end

end