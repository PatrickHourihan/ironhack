class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

home = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's plac", "Málaga", 2, 45), 
	Home.new("Ariel's place", "San Juan", 4, 49)
]

# home.each do | home |
# 	puts "#{home.name} in #{home.city}
# Price: $#{home.price} a night"
# end

prices = home.map do | home |
	home.price
end

puts prices

# total_price = home.reduce(0) do | sum, home_price |
# 	sum + home_price.length
# end

# puts total_price / home_price