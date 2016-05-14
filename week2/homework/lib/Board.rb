class Board
	def initialize
		#Spots    	0,0  0,1 0,2	
		@board = [
					["", "", ""], 

		# 			1,0  1,1 1,2   

					["", "", ""], 

		#   		2,0 2,1 2,2

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
			puts "-----------------------"
			puts "\n"
			return winner?
	end

	def add_character(location, marker)
		@marker = marker
		x = location [1]
		y = location [0]
		if (@board[y][x]).empty?
			@board[y][x] = "#{@marker}"
		else
			puts "#{@marker} is taken!! please choose another space, please."
			puts "\n"
		end
	end	

	def winner?
		if win_across?
		end
		if win_down?
		end
		if win_diagonal?
		end
	end

		def win_across?
			if 	(@board[0][0] == @board[0][1]) && (@board[0][1] == @board[0][2]) && (@board[0][0] != "") ||
				(@board[1][0] == @board[1][1]) && (@board[1][1] == @board[1][2]) && (@board[1][0] != "") ||
				(@board[2][0] == @board[2][1]) && (@board[2][1] == @board[2][2]) && (@board[2][0] != "")
			puts "Guess what? We have a winner!"
			puts "\n"
			end
		end

		def win_down?
			if 	(@board[0][0] == @board[1][0]) && (@board[1][0] == @board[2][0]) && (@board[0][0] != "") ||
				(@board[0][1] == @board[1][1]) && (@board[1][1] == @board[2][1]) && (@board[0][1] != "") ||
				(@board[0][2] == @board[1][2]) && (@board[1][2] == @board[2][2]) && (@board[0][2] != "")
			puts "Guess what? We have a winner!"
			puts "\n"
			end
		end

		def win_diagonal?
			if 	(@board[0][0] == @board[1][1]) && (@board[1][1] == @board[2][2]) && (@board[1][1] != "") ||
				(@board[2][0] == @board[1][1]) && (@board[1][1] == @board[0][2]) && (@board[1][1] != "")
			puts "Guess what? We have a winner!"
			puts "\n"
			end
		end
end