module Diagonal
	def move_diagonal?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y).abs
		difference_x = (@starting_x - ending_x).abs

		(difference_y.abs == difference_x.abs && difference_y.abs != 0) 
		
	end
end