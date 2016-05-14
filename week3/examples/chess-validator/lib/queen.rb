require_relative('across')
require_relative('diagonal')

class Queen < Piece 
	include Diagonal
	include Across 

	def can_move?(ending_y, ending_x)
		move_across?(ending_y, ending_x) ||
		move_diagonal?(ending_y, ending_x)
	end
end
