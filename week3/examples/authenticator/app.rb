# app.rb
require("pry")
require_relative("lib/authenticator")
require_relative("lib/word-counter")
require_relative("lib/counter-picker")

auth = Authenticator.new("Josh", "swordfish")

# Get login credentials 

	puts "Please enter your username."
	username_input = gets.chomp.capitalize
	
	puts "Now enter your password."
	password_input = gets.chomp

if 	auth.authenticate?(username_input, password_input) == true
	puts "Welcome back #{username_input}!"
 	# Do word counter things
 	puts "Gimme a sentence"
	sentence_input = gets.chomp 

	my_counter = WordCounter.new(sentence_input)

	binding.pry

	puts "Please select a number option: 1) count words, 2) count letters, 3) reverse the text, 4) convert to uppercase, 5) convert to lowercase"
	selection_input = gets.chomp

	counter_picker = CounterPicker.new(selection_input, my_counter)
	counter_picker.perform_operation

else
 	puts "go away #{username_input}"
end

