class StringCalculator 
	def add(numbers) 
		numbers.split(",").reduce(0) { |sum, n| sum + n.to_i }
	end
end

calc = StringCalculator.new

puts calc.add("")
puts calc.add("1")
puts calc.add("1,2")
puts calc.add("1,2,3")
puts calc.add("1,2,3,4")