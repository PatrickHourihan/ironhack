Exercise: Shake Shack

So after graduating Ironhack, you decided to change directions in you development career. You had a change of heart, and now you want to create my own brand new shiny startup. The problem is, you don’t know anything about running a business so let’s create a shake shop in something you do understand: Ruby.

Before you actually create your shop, you're going to have to decide what’s on the menu, right? Fortunately you're a stickler for simplicity, and your one and only selection is going to be of the milkshake variety, so let’s put this into Ruby terms. What attributes does a milkshake have? For now lets keep it simple - it will have a flavor and a price.

class MilkShake
  def initialize(flavor, price)
    @flavor = flavor
    @price = price
  end
end
Great, now we have milkshakes, we can create a new milkshake like this:

milkshake = MilkShake.new("Chocolate", 7)
Hmm, there’s one problem though. Probably you don’t want some boring old Shake Shop. And you want the milkshakes to be the best in town, so you're going to have to be able to add as many ingredients as you want to our delicious chocolate shake. This sounds like a new Ingredient class to me. What attributes should an ingredient have? How about a name (what the ingredient is), and a price (each ingredient can have a different price).

class Ingredient
  def initialize(name, price)
    @name = name
    @price = price
  end
end
So as you can see, when you create a new ingredient, Ruby is expecting you to input a name, and a price for this specific instance of an ingredient. If you wanted to create a new, reusable ingredient to add to our menu, you can tell Ruby like this:

banana = Ingredient.new("Banana", 2)
The problem is that the MilkShake class isn’t built to handle multiple ingredients. It only has one flavor attribute. Instead you want the milkshake to be a collection of ingredients. In Ruby terms, what can the collection of ingredients be represented as? How about an array of ingredients? Let’s revise the original MilkShake class to reflect this to have an attribute that can hold ingredients:

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end
end
So now the MilkShake class is comprised of a base price (the minimum someone can pay for a milkshake), and an empty list of ingredients that will both add to the price, and flavor of our milkshake. The next step is to allow the customer to add ingredients to their shake. How can you do this? Well, you have ingredients, and you have a milkshake to put them in, let’s actually make it happen in code.

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
end
So let’s create a new instance of a milkshake, some ingredients to add to it, and then add those ingredients to the milkshake through Ruby.

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
Unfortunately, your shop doesn’t run on hopes and dreams, and at some point you’re going to need to calculate the price of the milkshake. The total price of the milkshake should be calculated as its base price, plus the price of all of the ingredients we added to our milkshake. You have the base price, and you have the list of ingredients, let’s add them together into a total by traversing the array of ingredients, taking each items price, and finally adding the base price to it, in a new method.

def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end
Great! Right? Well, not quite. When you made the ingredient a new class outside of the milkshake class, you were telling Ruby that the milkshake shouldn’t be able to see the ingredient’s attributes outside of the Ingredient class itself. For the price_of_milkshake method, you need to see the ingredient’s price to be able to add it to the milkshake’s total. If you were to call ingredient.price as you did above, Ruby would throw an error. So how do you tell Ruby that you're going to need an attribute of ingredient (price) elsewhere? Well, an attr_reader, of course. So lets edit the Ingredient class:

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end
So now after adding a couple of new ingredients to the shake, you can call the new method to find out what the total price is, like this:

puts nizars_milkshake.price_of_milkshake
And the total price should show up in the terminal.

Student exercise: create the Shake Shop class

So now, your job is to put this all together. We built the ingredient and milkshake classes, now you have to build the shack shop class. Here’s some things you're going to need for this class:

An empty list where we can add milkshakes
A method to add milkshakes to this list
A method to checkout all of the milkshakes in our list
Hint: Model this class in the same way we created the milkshake class, and call the price_of_milkshake method to return a milkshakes total price when checking out.
