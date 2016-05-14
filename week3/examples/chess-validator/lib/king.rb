class King < Piece
	def can_move?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y).abs
		difference_x = (@starting_x - ending_x).abs

		(difference_y.abs == 1 && difference_x.abs == 0) || 
		(difference_x.abs == 1 && difference_y.abs == 0) ||
		(difference_y.abs == 1 && difference_y.abs == difference_x.abs && difference_y.abs != 0)
		
	end
end