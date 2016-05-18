require_relative('lib/string-calculator')
# Empty string returns 0
# Single digit returns that number
# Anything else gets added 

calc = StringCalculator.new

# Empty string returns 0
if calc.add("") == 0 
	puts "Returned zero for an empty string"
else 
	puts "Something went wrong with the empty string method"
end

# Single digit returns that number
if calc.add("1") == 1
	puts "Returned that single digit as a string"
else
	puts "Something went terribly wrong the single digit return method"
end

# Anything else gets added 
if calc.add("1,2,3") == 6
	puts "Returned the sum of the array"
else
	puts "Something is wrong with the anything else code"
end