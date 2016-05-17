class Rook < Piece
	def initialize(starting_y, starting_x)
		@starting_y = starting_y
		@starting_x = starting_x
	end

	def valid_move?(starting_y, starting_x, ending_y, ending_x)
		difference_y = starting_y - ending_y
		difference_x = starting_x - ending_x

		(difference_y == 0 && difference_x != 0 && difference_x >= 8 && difference_y >= 8) ||
		(difference_x == 0 && difference_y != 0 && difference_x >= 8 && difference_y >= 8)
	end
end