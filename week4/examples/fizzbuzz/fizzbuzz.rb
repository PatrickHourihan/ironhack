class FizzBuzz

	def fizzbuzz(num)
	#if num divisible by 3, return fizz
	  if num % 15 == 0 
	  	return "fizzbuzz"
	  end

	  if num % 3 == 0
		return "fizz"
	  end

	  if num % 5 == 0 
	  	return "buzz"
	  end

	end
end