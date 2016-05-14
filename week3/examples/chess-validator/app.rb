require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/king')
require_relative('lib/knight')
require_relative('lib/pawn')
require_relative('lib/board')

# Rook Tests
# white_rook = Rook.new(1,1)
# puts "Good Rook Moves"
# puts white_rook.can_move?(1,5)
# puts white_rook.can_move?(5,1)
# puts "Bad Rook Moves"
# puts white_rook.can_move?(5,3)

# Bishop Tests
# white_bishop = Bishop.new(1,1)
# puts "Good Bishop Moves"
# puts white_bishop.can_move?(8,8)
# puts "Bad Bishop Moves"
# puts white_bishop.can_move?(5,4)


# Queen Tests
# white_queen = Queen.new(1,1)
# puts "Good Queen Moves"
# puts white_queen.can_move?(8,8)
# puts white_queen.can_move?(1,5)
# puts white_queen.can_move?(5,1)
# puts "Bad Queen Moves"
# puts white_queen.can_move?(5,3)

# King Tests
# white_king = King.new(4,4)
# puts "Good King Moves"
# puts white_king.can_move?(3,4)
# puts white_king.can_move?(5,5)
# puts "Bad King Moves"
# puts white_king.can_move?(4,1)
# puts white_king.can_move?(8,8)

# Knight Tests 
# white_knight = Knight.new(4,4)
# puts "Good Knight Moves"
# puts white_knight.can_move?(5,6)
# puts white_knight.can_move?(6,3)
# puts white_knight.can_move?(2,3)
# puts white_knight.can_move?(3,6)
# puts "Bad Knight Moves"
# puts white_knight.can_move?(8,8)

# Pawn Tests 
# white_pawn = WhitePawn.new(4,2)
# puts "Good Pawn Moves"
# puts white_pawn.can_move?(4,4)
# puts white_pawn.can_move?(4,3)
# puts "Bad Pawn Moves"
# puts white_pawn.can_move?(4,5)
# puts white_pawn.can_move?(4,1)
# puts white_pawn.can_move?(4,8)

# second_pawn = WhitePawn.new(4,4)
# puts "Good Pawn Moves"
# puts second_pawn.can_move?(4,5)
# puts "Bad Pawn Moves"
# puts second_pawn.can_move?(4,6)

# black_pawn = BlackPawn.new(7,7)
# puts "Good Pawn Moves"
# puts black_pawn.can_move?(7,5)
# puts black_pawn.can_move?(7,6)
# puts "Bad Pawn Moves"
# puts black_pawn.can_move?(7,8)
# puts black_pawn.can_move?(7,2)

my_board = Board.new

black_rook1 = Rook.new(1,8, "black")
black_rook2 = Rook.new(8,8, "black")
white_rook1 = Rook.new(1,1, "white")
white_rook2 = Rook.new(8,1, "white")

my_board.add_piece(black_rook1, 1, 8) 
my_board.add_piece(black_rook2, 8, 8) 
my_board.add_piece(white_rook1, 1, 1) 
my_board.add_piece(white_rook2, 8, 1) 

black_bishop1 = Bishop.new(2,8, "black")
black_bishop2 = Bishop.new(7,8, "black")
white_bishop1 = Bishop.new(2,1, "white")
white_bishop2 = Bishop.new(7,1, "white")

my_board.add_piece(black_bishop1, 2, 8) 
my_board.add_piece(black_bishop2, 7, 8) 
my_board.add_piece(white_bishop1, 2, 1) 
my_board.add_piece(white_bishop2, 7, 1) 

black_knight1 = Knight.new(3,8, "black")
black_knight2 = Knight.new(6,8, "black")
white_knight1 = Knight.new(3,1, "white")
white_knight2 = Knight.new(6,1, "white")

my_board.add_piece(black_knight1, 3, 8) 
my_board.add_piece(black_knight2, 6, 8) 
my_board.add_piece(white_knight1, 3, 1) 
my_board.add_piece(white_knight2, 6, 1) 

black_queen = Queen.new(4,8, "black")
white_queen = Queen.new(4,1, "white")

my_board.add_piece(black_queen, 4, 8) 
my_board.add_piece(white_queen, 4, 1) 

black_king = King.new(5,8, "black")
white_king = King.new(5,1, "white")

my_board.add_piece(black_king, 5, 8) 
my_board.add_piece(white_king, 5, 1) 

# Board Tests 
puts "Good Moves"
puts my_board.can_move?(1, 1, 1, 5)
puts my_board.can_move?(1, 1, 1, 4)
puts "Bad Moves"
puts my_board.can_move?(1, 1, 1, 10)
puts my_board.can_move?(1, 1, 6, 1)



