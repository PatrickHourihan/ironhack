class Car 
	def initialize(noise)
		@noise = noise
	end
		
	def make_noise
		"my car makes this sound: '#{@noise}'"
	end
end

class RaceCar < Car
	def make_noise
		"my racecar makes this sound: '#{@noise}'"
	end
end


new_car = Car.new("Broom")
puts new_car.make_noise

new_racecar = RaceCar.new("BROOOOOOOM")
puts new_racecar.make_noise