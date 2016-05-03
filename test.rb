def sort_array(string)
	result = []
	split_sentence = (string.gsub(/[[:punct:]]/, '')).split(' ')
	split_sentence.sort { |x,y| y.upcase <=> x.upcase }
	split_sentence
end


puts sort_array("Have a nice day.") # => ["a", "day", "Have", "nice"]
puts sort_array("Fools fall for foolish follies.") # => ["fall", "follies", "foolish", "Fools", "for"]
puts sort_array("Ruby is a fun language!") # => ["a", "fun", "is", "language", "Ruby"]