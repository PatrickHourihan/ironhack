# (1..100).each do |i|
# 	if i % 3 == 0 && i % 5 == 0
# 		puts "FizzBuzz"
# 	elsif i % 3 == 0
# 		puts "Fizz"
# 	elsif i % 5 == 0
# 		puts "Buzz"
# 	else 
# 		puts i
# end
# end

# 1.upto 100 do |i|
# 	if i % 3 == 0 && i % 5 ==0 
# 		puts 'FizzBuzz'
# 	elsif i % 3 == 0
# 		puts 'Fizz'
# 	elsif i % 5 == 0
# 		puts 'Buzz'
# 	else puts i
# end
# end

i = 1 
while i < 100 
result = ""
	if i % 3 == 0 
		result = result + "Fizz"
	end
	if i % 5 == 0
		result = result + "Buzz"
	end 
	if i.to_s.start_with?("1") == true
		result = result + "Bang"
	end
	if i % 3 != 0 && i % 5 != 0
		result = i.to_s
	end
	puts result
	i += 1
end