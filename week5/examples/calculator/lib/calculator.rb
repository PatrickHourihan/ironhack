class Calculator

	def add
		puts "enter a number"
		num1 = (gets.chomp).to_f
		puts "enter a number"
		num2 = (gets.chomp).to_f
		puts (num1 + num2)
	end
	
	def subtract
		puts "enter a number"
		num1 = (gets.chomp).to_f
		puts "enter a number"
		num2 = (gets.chomp).to_f
		puts num1 - num2
	end

	def multiply
		puts "enter a number"
		num1 = (gets.chomp).to_f
		puts "enter a number"
		num2 = (gets.chomp).to_f
		puts num1 * num2
	end

	def divide
		puts "enter a number"
		num1 = (gets.chomp).to_f
		puts "enter a number"
		num2 = (gets.chomp).to_f
		puts num1 / num2
	end
end

# test_calculator = Calculator.new
# test_calculator.add
# test_calculator.subtract
# test_calculator.multiply
# test_calculator.divide