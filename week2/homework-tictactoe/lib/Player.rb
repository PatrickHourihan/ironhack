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