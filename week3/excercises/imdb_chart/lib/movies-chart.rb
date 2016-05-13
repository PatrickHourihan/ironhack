class MoviesChart
	def initialize(movies)
		@movies = movies
	end

	def print_chart
		chart = ""
		10.downto(1) do | i |
			@movies.each do | movie |
				if movie.rating >= i
					chart += "|#"
				else
					chart += "| "
				end
			end
			chart += "|\n"

		end
		puts chart

	def print_number 
		# @movies.each_index { | x | print "|", x + 1}
		(1..@movies.length).each do | num |
			print "|#{num}" 
		end
		print "|\n"
	end	

	end

	def print_list
		@movies.each_with_index do | movie, index |
		puts "#{index + 1} #{movie.title}"
		end
	end

end