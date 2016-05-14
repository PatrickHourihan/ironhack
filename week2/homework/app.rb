require_relative('lib/board')

my_board = Board.new
my_board.show_board
my_board.add_character([0,0], "X")
my_board.show_board
my_board.add_character([1,1], "X")
my_board.show_board
my_board.add_character([1,1], "0")
my_board.show_board
my_board.add_character([2,2], "O")
my_board.show_board
my_board.add_character([0,2], "X")
my_board.show_board
my_board.add_character([2,0], "X")
my_board.show_board