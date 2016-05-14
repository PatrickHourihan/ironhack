class Knight < Piece
	def can_move?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y).abs
		difference_x = (@starting_x - ending_x).abs

		(difference_y.abs == 1 && difference_x.abs == 2) || 
		(difference_x.abs == 1 && difference_y.abs == 2) 
		
	end
end