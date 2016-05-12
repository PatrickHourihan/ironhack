# Attributes 
	# Title
	# Date
	# Text

# Actions (methods)
	# Print single post

class Post
	attr_reader :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def print_single_post
		puts "#{@title}".green
		puts "**************".blue
		puts "#{@text}".green
		puts "----------------".blue
	end
end
