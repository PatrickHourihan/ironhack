class Home
  attr_reader(:name, :city, :price, :capacity)

  def initialize(name, city, price, capacity)
    @name = name
    @city = city
    @price = price
    @capacity = capacity
  end
end

homes = [
	Home.new("Patrick's place", "Ponte Vedra Beach", 200_000, 3),
	Home.new("Priscila's place", "Madrid", 300_000, 6),
	Home.new("Jack's place", "Los Angeles", 500_000, 1),
	Home.new("John's place", "Metuchen", 150_000, 5),
	Home.new("OkRan's place", "Seoul", 50_000, 7),
	Home.new("Brighid's place", "Jacksonville", 100_000, 2),
	Home.new("Penny's place", "Miami", 20_000, 13),
	Home.new("Hannah's place", "North Carolina", 40_000, 6),
	Home.new("Rover's place", "New Jersey", 30_000, 10),
	Home.new("Leyla's place", "Coconut Grove", 1_000_000, 2)
]

def print_homes(homes)
	homes.each do | home |
		  puts "#{home.name} in #{home.city} has a capacity of #{home.capacity}. Price: #{home.price}"
	end
end

def sorted_price(homes)
	homes.sort! do | home1, home2 |
		home2.price <=> home1.price
	end
end

def sorted_capacity(homes)
	homes.sort! do | home1, home2 |
		home2.capacity <=> home1.capacity
	end
end

# print_homes(homes)

def user_sorting(homes)
	puts "You have the choice to sort by price or capacity - choose wisely..."
	choice = gets.chomp.upcase
	if(choice == "CAPACITY")
		sorted_capacity(homes)
		print_homes(homes)
	elsif(choice == "PRICE")
		sorted_price(homes)
		print_homes(homes)
	else
		puts"You have chosen unwisely..."
	end
end

# user_sorting(homes)

def user_selecting(homes)
	puts "Which city do you select?"
	city_choice = gets.chomp.capitalize
# now I have the user's selected city. i need to use select to filter through each home in the homes array, compare to the users input, and puts the selected_city
	selected_city = homes.select do |home|
		home.city == city_choice
end
print_homes(selected_city)
end

# user_selecting(homes)

def average (homes)
# use reduce
  total_capacities = homes.reduce(0.0) do | sum, home |
	sum + home.capacity
  end
  puts total_capacities / homes.length
end

# average(homes)

