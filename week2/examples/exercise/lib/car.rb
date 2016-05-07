class Car 
	def initialize(car_sound, engine)
		@car_sound = car_sound
		@engine = engine
	end

	def start
		puts "The car makes this noise: #{@car_sound}, while the engine makes this noise: #{@engine.move_pistons}"
	end
end