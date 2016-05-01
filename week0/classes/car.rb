# What does a car do?
	# Honks
	# Starts
	# Plays Radio

# What defines a car?
	# color
	# make
	# model
	# engine
	# price

class Car

attr_accessor :color

	def initialize(my_color, sound)
		@color = my_color	
		@sound = sound 	
	end

	# Instance Method > belongs to one specific Instance (in this case, car)
	def make_noise
		puts "My car goes #{@sound}"
	end

	def play_radio
		puts "Sgt. Pepper's Lonely Hearts Club Band"
	end

end

class RaceCar < Car 
	def make_noise
		puts "My #{@color} car goes #{@sound.upcase}"
	end
end

volvo = Car.new("Red", "blecckkkk")
mazda = Car.new("Yellow", "yeck")
honda = Car.new("Orange", "bleh")
tesla = Car.new("Black", "neeeer")
escalade = Car.new("Silver", "seeeer")

ferrari = RaceCar.new("Red", "vrooom vrooom")

# volvo.make_noise
# mazda.make_noise

# tesla.play_radio 

# escalade.color = "green"

# puts escalade.color

ferrari.make_noise 