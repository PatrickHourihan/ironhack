require_relative('beerable')

class Programmer
	include Beerable

	def initialize(name, favorite_drink)
		@name = name
		@favorite_drink = favorite_drink
	end

	def drink_favorite_drink
		drink_beer
	end
end