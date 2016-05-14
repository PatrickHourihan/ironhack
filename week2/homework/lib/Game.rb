class Game
	def initialize 
	end
	attr_accessor :board
	def take_turns
		puts "please select from one of the following corresponding positions: 1 2 3 4 5 6 7 8 9"
		turn1 = gets.chomp
		puts "you have selected #{turn1}!"
	end

end



# I want to print board in the take_turns method my_board.board_with_numbers
# Then, print board again after user has selected to show result of selection