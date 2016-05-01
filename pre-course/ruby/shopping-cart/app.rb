require_relative('lib/ShoppingCart')
require_relative('lib/item')
require_relative('lib/fruit')
require_relative('lib/houseware')

# Application Code
# Store Menu
banana = Fruit.new("Banana", 10)
vaccuum_cleaner = Houseware.new("Vaccuum Cleaner", 150)

orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

# My Cart
my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vaccuum_cleaner)
my_cart.add_to_cart(rice)

puts "Your total today is $#{my_cart.checkout}. Have a nice day!"