class Game 
	attr_reader :board
	def initialize(player, computer)
		@player = player
		@computer = computer
	end

# need a taking turns method
def taking_turns
	
end

end



class Player
    def initialize(game, marker)
      @game = game
      @marker = marker
    end
    attr_reader :marker
  end

class Player1 < Player 

  end

class Computer < Player

  end