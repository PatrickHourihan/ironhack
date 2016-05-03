class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Málaga", 2, 45), 
	Home.new("Ariel's place", "San Juan", 4, 49)
]

# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# EXERCISE - each

def print_homes(homes)
  homes.each do | home |
	puts "#{home.name} in #{home.city}
Price: $#{home.price} a night"
  end
end

print_homes(homes)

# EXERCISE - map

# prices = homes.map do | home |
# 	home.price
# end

# puts prices

# total_capacities = 0.0 

# homes.each do | home |
#   total_capacities = total_capacities + home.capacity
# end

# total_capacities = homes.reduce(0.0) do | sum, home |
#   sum + home.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

# Homes in San Juan
# def san_juan_homes(homes) 
#   homes.select! do | home |
#   # Keep home only if its city is "San Juan"
#   home.city == "San Juan"
#   end
# end

# puts san_juan_homes(homes)

# Homes with capacity 4 or more
# high_capacity_homes = homes.select do | home |
#   # Keep home only if its capacity is 4 or greater
#   home.capacity >= 4
# end
# def high_capacity_homes(homes)
#   homes.select do | home | 
#     home.capacity >= 4
#   end
# end

# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end

# puts "The first home that costs $41 is:"
# puts home_41_dollars.name

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their name
#   home1.name <=> home2.name
# end

# IMPORTANT METHODS WE COVERED: 

# You can use each for pretty much every task you have to do with arrays.
# You can use map to transform all the items in an array to get a new one.
# You can use reduce to accumulate a single value from all the items.
# You can use select to remove items from an array easily.
# You can use find to pick out a single item in an array.
# You can use sort to change the order of an array.
