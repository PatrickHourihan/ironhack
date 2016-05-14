class ShoppingCart
  def initialize
    @items = []
  end

  def add_to_cart(item)
  	@items.push(item)
  end

  def checkout
	total = 0
	
	@items.each do | single_item |
	  total += single_item.price
	end
	
	total
  end
end

class Item
  def initialize(name, price)
	@name = name
	@price = price
  end

  def price
	@price
  end
end

class Houseware < Item
  def price
	if @price > 100
	  @price - (@price * 0.05)
    else
      @price
    end
  end
end

class Fruit < Item
  def price
	today = Time.now
	  if today.saturday? || today.sunday?
		@price - (@price * 0.1)
	  else
	  	@price
	  end
  end
end

# Store Menu
banana = Fruit.new("Banana", 10)
vaccuum_cleaner = Houseware.new("Vaccuum Cleaner", 150)

orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
fruity_pebbles = Item.new("Fruity Pebbles", 20)
raspberry = Fruit.new("Raspberry", 1)

# My Cart
my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vaccuum_cleaner)
my_cart.add_to_cart(rice)
my_cart.add_to_cart(raspberry)

puts "Your total today is $#{my_cart.checkout}. Have a nice day!"