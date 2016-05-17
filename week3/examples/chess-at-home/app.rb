require_relative('lib/board')
require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/queen')

wR1 = Rook.new(1, 1)
wR2 = Rook.new(8, 1)
bR1 = Rook.new(1, 8)
bR2 = Rook.new(8, 8)
puts "Good White Rook Moves"
puts wR1.valid_move?(1, 1, 1, 6)
puts wR2.valid_move?(8, 1, 3, 1)
puts "Bad White Rook Moves" 
puts wR1.valid_move?(1, 1, 6, 6)
puts wR2.valid_move?(8, 1, 5, 5)
puts "Good Black Rook Moves"
puts bR1.valid_move?(1, 8, 6, 8)
puts bR2.valid_move?(8, 8, 8, 1)
puts "Bad Black Rook Moves"
puts bR1.valid_move?(8, 8, 11, 8)

# wQ = Queen.new(4, 1)
# bQ = Queen.new(4, 8)
# puts "Good White Queen Moves"
# puts wQ.valid_move?(4, 1, 2, 3)
# puts wQ.valid_move?(4, 1, 7, 4)
# puts wQ.valid_move?(4, 1, 4, 7)
# puts "Bad White Queen Moves"
# puts wQ.valid_move?(4, 1, 7, 8)
# puts wQ.valid_move?(4, 1, 4, 9)
# puts "Good Black Queen Moves"
# puts bQ.valid_move?(4, 8, 6, 6)
# puts "Bad Black Queen Moves"
# puts bQ.valid_move?(4, 8, 8, 6)