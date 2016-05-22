class Lexiconomitron
	def eat_t(input)
		no_t_array = input.split("")
		no_t_array.delete("t")
		no_t_array.join("")
	end

	def shazam(input)
		output = [eat_t(input.first), eat_t(input.last)]
		  output.each do | word |
		  word.reverse!
		end
	end

	def oompa_loompa(input)
		input.select do | word |
		  word.length <= 3
		end	
	end
end