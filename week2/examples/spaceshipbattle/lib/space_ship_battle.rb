# Attributes 
	# Attacking spaceship
	# Defending spaceship
# Actions 
	# Battle

class SpaceShipBattle
  def initialize(first_spaceship, second_spaceship)
  	@attacking_spaceship = first_spaceship
  	@defending_spaceship = second_spaceship
  end

  def battle
 	 # Make the ships attack each other until one of them is dead
 	 # Until the attacking spaceshi's shield is zero 0 or the defending ships shield is 0
  	until @attacking_spaceship.dead? || @defending_spaceship.dead?
 	 # Have each spaceship attack the other 
 		@attacking_spaceship.attack(@defending_spaceship)
 		new_attacker = @defending_spaceship.clone
 		new_defender = @attacking_spaceship.clone

# make sure to compare to local variables and not instance variables 
 		@attacking_spaceship = new_defender
 		@defending_spaceship = new_attacker
  	 # Then switch positions 
  	end
  	puts "The battle has ended"
  end
end