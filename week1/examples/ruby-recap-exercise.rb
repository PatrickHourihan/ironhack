# Write a method power that takes in two integers (base and exponent) and returns 
# the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

def power(base, exponent)
total = 1
i = 1
  while i <= exponent
	total = total * base
	i += 1
  end
total
end

puts power(3, 4)


def reverse(string)
	string = string.reverse
end
puts reverse("You are not going anywhere")

# Write a method factorial that receives a number and returns the product of 
# every number up to the current number multiplied together.

def factorial(number)
product = 1
i = 2
  while i <= ( number + 1 )
	product = product * ( i - 1 )
	i += 1
  end
product
end

puts factorial(5)

# Write a method that gets a number of minutes and returns a string converting 
# those minutes in hours:minutes format.

def time_conversion(minutes)
  converted_hours = minutes / 60
  converted_minutes = minutes - (converted_hours * 60)
  puts converted_hours.to_s + ":" + converted_minutes.to_s
  # as of now, this code returns 8.3333 > I need to convert this number into time format
end

time_conversion(260)

# "8:20"

# COUNTING VOWELS
# Write a method that receives a string and returns the number of vowels in that string. 
# You may assume that all the letters are lower cased. You can treat "y" as a consonant.

def count_vowels(string)
	only_vowels = string.scan(/[aeiou]/)
	return_number = only_vowels.count
	puts return_number 
end

count_vowels("hello")
# 2

# UNIQUE
# Write a method uniqueness that takes in an array of items and returns the array without 
# any duplicates. Don’t use Ruby’s uniq method!

def uniqueness(array)
	array & array 
end

puts uniqueness([1,5,"frog",2,1,3,"frog"])
# [1,5,”frog”,2,3]





