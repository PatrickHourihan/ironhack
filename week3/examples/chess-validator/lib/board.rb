class Board 
	def initialize
		@board = [
					[], 
					[],
					[],
					[],
					[],
					[],
					[],
					[],
					[],
				]
	end

	def add_piece(piece, y, x) 
		@board[y][x] = piece 
	end

	def can_move?(y, x, ending_y, ending_x)
		if piece_on_board(y, x, ending_y, ending_x) && legal_move(y, x, ending_y, ending_x) && friend_or_foe(y, x, ending_y, ending_x)
			"you made a legal move!!!"
		else
			"this is an illegal move!!!"
		end
	end

	def piece_on_board(y, x, ending_y, ending_x)
		1 <= y && y <= 8 && 1 <= x && x <= 8 &&
		1 <= ending_y && ending_y <= 8 &&
		1 <= ending_x && ending_x <= 8
		# x <= 8 && y <= 8 && (ending_y >= 0 && ending_y <= 8) && (ending_x >= 0 && ending_x <= 8)
	end

	def legal_move(y, x, ending_y, ending_x)
		@board[y][x].can_move?(ending_y, ending_x)
	end

	def friend_or_foe(y, x, ending_y, ending_x)
		if @board[ending_y][ending_x].nil?
			true
		else
			if @board[y][x].color == @board[ending_y][ending_x].color
				false
			else
				true
			end
		end
	end

end

