class Board
	def initialize
		#Spots    	0,0  0,1 0,2	
		@board = [	["", "", ""], 
		# 			1,0  1,1 1,2			
					["", "", ""], 
		# 			2,0  2,1 2,2
					["", "", ""]
				]
	end

	def show_board		
			board_container = ""
			@board.each do | row |
				row.each do | cell | 
					if cell.empty?
						board_container += " | ___ "
					else
						board_container += " | _#{cell}_ "
					end
				end
				board_container += "|\n--+---+--+---+--+---+--\n"
			end
			puts board_container
			# need to start game here? or, loop through each turn, beginning with start of game. return function that determines if someone has won after each turn - boolean!
			return winner? 
	end

	def add_character(location, marker)
		@marker = marker
		x = location[1]
		y = location[0]
		if (@board[y][x]).empty?
			@board[y][x] = "#{@marker}"
		else
			puts "#{@marker} is occupied!!! you'll have to pick again, although i have not created the Game class yet, so..."
		end
	end


	def winner? 
		if win_across?
		end
		if win_down?
		end
		if win_diagnoal?
		end
	end

		def win_across?
			if 	(@board[0][0] == @board[0][1]) && (@board[0][1] == @board[0][2]) && (@board[0][0] != "") ||
				(@board[1][0] == @board[1][1]) && (@board[1][1] == @board[1][2]) && (@board[1][0] != "") ||
				(@board[2][0] == @board[2][1]) && (@board[2][1] == @board[2][2]) && (@board[2][0] != "")
					puts "guess what? we have a winner!!!"
			end
		end
		def win_down?
			if 	(@board[0][0] == @board[1][0]) && (@board[1][0] == @board[2][0]) && (@board[0][0] != "") ||
				(@board[0][1] == @board[1][1]) && (@board[1][1] == @board[2][1]) && (@board[0][1] != "") ||
				(@board[0][2] == @board[1][2]) && (@board[1][2] == @board[2][2]) && (@board[0][2] != "") 
					puts "guess what? we have a winner!!!"
			end 
		end
		def win_diagnoal?
			if 	(@board[0][0] == @board[1][1]) && (@board[1][1] == @board[2][2]) && (@board[0][0] != "") ||
				(@board[2][0] == @board[1][1]) && (@board[1][1] == @board[0][2]) && (@board[2][0] != "")
					puts "guess what? we have a winner!!!"
			end
		end

end
