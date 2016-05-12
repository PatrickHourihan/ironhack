class WordCounter
	def initialize(sentence)
		@sentence = sentence
	end

	def count_words
		words = @sentence.split
		words.length
	end

	def count_letters 
		@sentence.length
	end

	def reverse_text
		@sentence.reverse 
	end

	def convert_to_uppercase
		@sentence.upcase 
	end

	def convert_to_lowercase
		@sentence.downcase 
	end

end
