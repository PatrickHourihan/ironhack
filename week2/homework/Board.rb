class Board
	def initialize
		#Spots    0,0  0,1 0,2	1,0  1,1 1,2   2,0 2,1 2,2
		@board = [["", "", ""], ["", "", ""], ["", "", ""]]
	end

	def show_board		
			board_container = ""
			@board.each do | row |
				row.each do | cell | 
					if cell.empty?
						board_container += " ___ "
					else
						board_container += " _#{cell}_ "
					end
				end
				board_container += "\n"
			end
			puts board_container
	end

# this method simply adds location, I want to revise to add user to enter a character - maybe have computer take turn and randomly select a location 
	# def add_character(location)
	# 	x = location[1]
	# 	y = location[0]

	# 	@board[y][x] = "X"
	# end
end