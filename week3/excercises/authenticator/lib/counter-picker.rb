class CounterPicker
	def initialize(selection_input, word_counter)
		@selection_input = selection_input
		@word_counter = word_counter
	end

	def perform_operation
		if @selection_input == "1"
		puts "Number of words in your sentence was #{@word_counter.count_words}"
	
		elsif @selection_input == "2"
		puts "Number of letters in your sentence was #{@word_counter.count_letters}"
	
		elsif @selection_input == "3"
		puts "Check our your sentence in reverse: #{@word_counter.reverse_text}"
	
		elsif @selection_input == "4"
		puts "Want to see your sentence all in uppercase: #{@word_counter.convert_to_uppercase}"
	
		elsif @selection_input == "5"
		puts "How about your sentence in all lowercase: #{@word_counter.convert_to_lowercase}"

		else
		puts "Your option is invalid"
		end
	end
end