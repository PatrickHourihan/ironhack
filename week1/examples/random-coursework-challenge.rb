 # classmates = ["Ryan", "Dieter", "Melike"]

 # classmates.each do | name |
 # 	puts "Good morning #{name} :)"
 # end

cities = ["miami", "madrid", "barcelona"]

 cap_cities = cities.map do | city |
	
 	city.capitalize
 end

 cap_cities = cities.map { | city | city.capitalize }

 p cap_cities

