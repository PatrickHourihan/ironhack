require_relative('lib/Board')
require_relative('lib/Game')
require_relative('lib/Player')


my_board = Board.new
# my_board.show_board
# my_board.add_character([0,0], "X")
# my_board.show_board
# my_board.add_character([1,1], "X")
# my_board.show_board
# my_board.add_character([1,1], "0")
# my_board.show_board
# my_board.add_character([2,2], "O")
# my_board.show_board
# my_board.add_character([0,2], "X")
# my_board.show_board
# my_board.add_character([2,0], "X")
# my_board.show_board


# my_board.numbered_board
# new_game = Game.new
# new_game.take_turns

# Desired output:

#  | _1_  | _2_  | _3_ |
# --+---+--+---+--+---+--
#  | _4_  | _5_  | _6_ |
# --+---+--+---+--+---+--
#  | _7_  | _8_  | _9_ |
# --+---+--+---+--+---+--
# -----------------------

# "please select from one of the following corresponding positions: 1 2 3 4 5 6 7 8 9"

# let's say the user selects 7

# "you have selected 7!"

#  | _1_  | _2_  | _3_ |
# --+---+--+---+--+---+--
#  | _4_  | _5_  | _6_ |
# --+---+--+---+--+---+--
#  | _X_  | _8_  | _9_ |
# --+---+--+---+--+---+--
# -----------------------
