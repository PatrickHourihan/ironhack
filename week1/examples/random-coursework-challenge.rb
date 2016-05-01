 # classmates = ["Ryan", "Dieter", "Melike"]

 # classmates.each do | name |
 # 	puts "Good morning #{name} :)"
 # end

cities = ["miami", "madrid", "barcelona"]

 # cap_cities = cities.map do | city |
	
 # 	city.capitalize
 # end

 # cap_cities = cities.map { | city | city.capitalize }

 # p cap_cities

 # Reduce 

 # total = [1, 2, 3].reduce(10.0) do | sum, num |
 # 	sum + num
 # end

 # puts total 

 total_length = cities.reduce(0.0) do | sum, city_length |
 	sum + city_length.length 
 end 

 puts total_length / cities.length

# cities.each_with_index do | city, index |
#   puts "#{index + 1}: #{city}"
# end