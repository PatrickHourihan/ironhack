def eat (food)
	puts "Eating some #{food}"
end 

eat("Pizza")

def find_occurrences
end

i = 1

while i <= 42
	puts i
	i += 1
end

foods = ["Pizza", "Cookies", "Bread"];
foods.each do | food |
	puts food 
end

caps_foods = foods.map do | food | 
	food.upcase
end

p caps_foods

nums = [2, 6, 7, 42]

total = nums.reduce do | sum, num |
	sum + num
end

breadless = foods.select do | food |
	food != "Bread"
end