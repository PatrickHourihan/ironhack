require_relative('across')

class Rook < Piece
	include Across
	def can_move?(ending_y, ending_x)
		move_across?(ending_y, ending_x)
	end
end
