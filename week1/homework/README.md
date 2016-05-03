Collection methods

Introduction

Collection methods in Ruby are methods that help you deal with arrays. As a programmer you will have to deal with arrays full of objects all the time. When you have an array, you are going to want to loop through it. That just means your program is going to do something with every item inside the array. You might print them, add them, change them, save them somewhere, whatever your program needs.

Let's say we are making a text-based app that is competing with Airbnb. We are building our page that will display the list of available homes.

First, we've got a Home class that represents an apartment, house or room.

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end
Now let's create an array with 5 homes so we can start building our list and practice collection methods along the way.

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
How would you print each home's name? Well, you could just have a line of code for each thing inside the array:

puts homes[0].name
puts homes[1].name
puts homes[2].name
puts homes[3].name
puts homes[4].name
That works okay for now, but what if our array had 100 homes? This approach isn't scalable at all.

Looping through an array

As you've seen previously, we can automatically repeat some code as many times as we need by using a loop. They are often employed to increment a number over a given range and do something with each intervening number. In this example we are looping from 0 to 100 and printing out each number:

for number in 0..100
  puts number
end
This style of loop makes it very easy to print the name of each of our homes for as many homes as are in our array, all in 3 lines of code. All we have to do is use the number variable as the position in our array:

for pos in 0..100
  puts homes[pos].name
end
Using a loop like this to perform an action with every element of an array is called array iteration. This way of array iterating works, but's it's a bit messy. We have to type homes[pos] every time we want to use the current item. It may not seem like a big deal now, but when we have to use the item 10 times in the loop, it gets very hard to read. We will see later on that for other objects that are like arrays, this approach doesn't work.

Our first collection method: each

The classic collection method is each. This each prints out the name of every home:

homes.each do |hm|
  puts hm.name
end
This method allows us to execute some code with each item in the array. The cool thing about each and the rest of the collection methods is that they will automatically perform the specified action with each item in the array, no matter if there are 10 items or 10,000.

Blocks

We specify which code is to be run by using a block. A block is a bit like a method in that it represents a series of instructions. Blocks are denoted by a do and an end. You can also use curly braces {} instead. Here is the same code as before but with curly braces:

homes.each { |hm|
  puts hm.name
}
Blocks can also have parameters, just like methods can. In blocks, parameters are in between pipes || instead of parentheses. With the each method, the parameter you get in the block is one of the items in the array. In this case there are a bunch of instances of Home in the array, so we've called the variable hm.

Using parameters in blocks

The key thing to using parameters in blocks is asking yourself: "If I had one of the items in the array, what do I need to do with that item?" In this example, we are trying to print the name of a Home. If I had a single Home in a variable called hm, how would I print its name? Using puts, of course:

hm = Home.new("Nizar's place", "San Juan", 2, 42)

puts hm.name
That puts line is exactly what we need to have in the block so that each can repeat it with every home in the array.

homes.each do |hm|
  puts hm.name
end
Exercise: each

Use the each method to print more information about each home. It should look something like this:

Nizar's place in San Juan
Price: $42 a night

Fernando's place in Seville
Price: $47 a night

Josh's place in Pittsburgh
Price: $41 a night

Gonzalo's place in Málaga
Price: $45 a night

Ariel's place in San Juan
Price: $49 a night
Transforming arrays with map

A common task in programming is taking an array of items and producing a new array with slightly different items. Let's say you need an array of cities from each of the homes. You might initially think to do that with an each like this:

# Create an empty array
cities = []

# Push each home's city into the array
homes.each do |hm|
  cities.push(hm.city)
end

puts cities
That works just fine, but this is really something we should do with map:

cities = homes.map do |hm|
  hm.city
end

puts cities
The map method takes an array and returns a second array of new items, each of the new items based off of an item of the first. You can think of map as making a new array of items that are the result of transforming the items of the original. In other words, you map the original array into the new array. Our cities array ends up looking like this:

cities = [
  "San Juan",
  "Seville",
  "Pittsburgh",
  "Málaga",
  "San Juan"
]
Like each and the other collection methods, the map method also iterates through the original array with a block. With map the block needs to return the value that will be in the new array. In our example we are transforming an array of homes into an array of the homes' cities.

The homes array turns into the cities array.

There's two important things to remember when you are first learning map. First, map returns the new array. By default, the original array is unchanged. That means that you usually want to assign the result to a variable to use it:

# Remember the assigment!
# ||||||
# vvvvvv
cities =  homes.map do |hm|
            hm.city
          end

# We have the new cities array
puts cities

# But the old homes array is still intact
puts homes
Second, the block in a map needs to return the new value. In blocks you can't reliably use the return statement, so you have to use implicit return. Implicit return just means that whatever the last statement in the block is, that will be used as the return value of the block. Just make sure the last line of the block is the value you want to return.

# Good return
cities = homes.map do |hm|
  # Return each home's city
  hm.city
end

# Bad return
bad = homes.map do |hm|
  # puts returns nil
  puts hm.name
end
The bad array ends up being an array of nil:

bad = [ nil, nil, nil, nil, nil ]
Whenever you see something like that you should know that your map's block isn't returning the right value.

Exercise: map

Map the array of homes into an array of their prices. Use that array of prices to get the average price of homes. What collection method should you use for the average?

Accumulating with reduce

Another task you will encounter frequently as programmer is aggregating values from an array. That means you are going through each item and accumulating a value progressively from them. Normally you are just adding the number but you could do anything. Let's get the average capacity of our homes with an each:

total_capacities = 0.0

homes.each do |hm|
  total_capacities = total_capacities + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length
Again, the each version works, but you should really be doing things like this with a reduce:

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length
The reduce method takes an array and returns a single value that has been accumulated from every item of the array. You can think of reduce as taking a little piece of information from each item in the array and combining them in some interesting way. In other words, you reduce the original array to a single aggregate value. The total_capacities variable, the result of adding the capacities of each home, ends up being 16.0.

Again, the reduce method iterates through the original array with a block. The block receives two parameters instead of just one:

The accumulator parameter that holds the aggregate value we have so far. In our example it's the sum variable that holds the added capacities.
The item in the array that we will deal with in each iteration. In out example it's the hm variable that holds an instance of Home.
Like with map, the block needs to return a value. Basically you will extract whatever information you need from the current item and combine that with the accumulator. In our example, we are adding the current home's capacity to sum. For reduce to work, we have to make sure to return that value in the block. In the next iteration sum will contain that returned value. After the reduce goes through all the items in the array, the value returned in the last block becomes the final value of the reduce. This is the most confusing part of reduce, so just bear with us for now. It will be a lot more clear with a forthcoming example.

# Remember the assigment!
# The return value of the block from the last iteration will be returned.
# ||||||||||||||
# vvvvvvvvvvvvvv
total_capacities = homes.reduce(0.0) do |sum, hm|
                     sum + hm.capacity
                   end
Aside from the block, you also need to specify a starting value. In this case, before we add any of the homes' capacities we start with a value of 0.0. That goes in parentheses after reduce and before the block's do. The starting value will be the value of the accumulator in the first iteration. Again, in our example our accumulator, sum, will start out as 0.0.

Since reduce is the most complex of the collection methods we are highlighting here, it's best to break it down step by step to illustrate how it's working. Our homes array has 5 items in it so the block will be run 5 times. Let's see what happens to the values as we go through those iterations. As a reminder here is our reduce call:

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end
Reduce iteration #1

This is the first iteration so sum starts out with the specified initial value of 0.0. The first iteration uses the first home as the current item. The return value is 0.0 plus 2: 2.0. In the next iteration, sum will be 2.0.

# Accumulator takes the initial value
sum = 0.0
# First item in the array
hm = Home.new("Nizar's place", "San Juan", 2, 42)

# The return value of this iteration is 2.0
result = sum + hm.capacity
Reduce iteration #2

From this iteration on, the sum variable will always contain the result of the previous iteration. As before, hm will contain the next item of the array. The result is now 7.0 (2.0 plus 5). In the next iteration, sum will be 7.0.

# Accumulator takes the previous iteration's result
sum = 2.0
# Second item in the array
hm = Home.new("Fernando's place", "Seville", 5, 47)

# The return value of this iteration is 7.0
result = sum + hm.capacity
Reduce iteration #3

The result is now 10.0 (7.0 plus 3). In the next iteration, sum will be 10.0.

sum = 7.0
hm = Home.new("Josh's place", "Pittsburgh", 3, 41)

# The return value of this iteration is 10.0
result = sum + hm.capacity
Reduce iteration #4

The result is now 12.0 (10.0 plus 2). In the next iteration, sum will be 12.0.

sum = 12.0
hm = Home.new("Gonzalo's place", "Málaga", 2, 45)

# The return value of this iteration is 12.0
result = sum + hm.capacity
Reduce iteration #5

The result is now 16.0 (12.0 plus 4). This is the final iteration so this iteration's return value becomes the return value for the entire reduce.

sum = 12.0
hm = Home.new("Ariel's place", "San Juan", 4, 49)

# The return value of this iteration is 16.0
result = sum + hm.capacity
Reduce return value

After iteration #5 we are left with a value of 16.0. That means that the entire reduce turns into that value and total_capacities gets that value assigned to it.

So this:

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end
Really becomes this:

total_capacities = 16.0
Exercise: reduce

In your map exercise, you most likely used each to calculate the average price of homes. Use reduce to calculate the average instead.

Other interesting collection methods

each_with_index

The each_with_index method is the same as each, except the block receives a second parameter: the item's array index. Use this when you need the index in addition to the item itself. Here we are using it to show numbers when displaying home names.

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end
select

The select method is used to filter an array. Like map, it returns a new array and leaves the original untouched. The block needs to return true or false for the given item. If the block returns false for an item, that item will be removed from the new array. In other words, you use it to select some items and get rid of any that aren't selected.

In this example we are selecting the homes that are in San Juan:

# Homes in San Juan
san_juan_homes = homes.select do |hm|
  # Keep hm only if its city is "San Juan"
  hm.city == "San Juan"
end
The san_juan_homes array ends up looking like this:

san_juan_homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Ariel's place", "San Juan", 4, 49),
]
In this second example we are filtering out homes with low capacity:

# Homes with capacity 4 or more
high_capacity_homes = homes.select do |hm|
  # Keep hm only if its capacity is 4 or greater
  hm.capacity >= 4
end
The high_capacity_homes array ends up looking like this:

high_capacity_homes = [
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
find

The find retrieves a single item from the array that matches the condition specified in the block. The block should return true or false like in the select method. If there are multiple items that meet the condition, find returns only the first of them.

In this example we are retrieving a single home by a specific price:

home_41_dollars = homes.find do |hm|
  # Is hm's price $41?
  hm.price == 41
end

puts "The first home that costs $41 is:"
puts home_41_dollars.name
sort

The sort method does what you expect it to do: order the items in the array. To do the sorting, Ruby has to be able to compare the items in the array and decide which is considered lesser or greater. It does this using the <=>, also known as the spaceship operator.

The spaceship is a concise way of comparing two values. It returns one of three things:

-1 if the first value is less than the second
0 if both values are equal
1 if the first value is greater than the second
puts "1 <=> 3 is:"
puts 1 <=> 3
# -1

puts "5 <=> 5 is:"
puts 5 <=> 5
# 0

puts "7 <=> 4 is:"
puts 7 <=> 4
# 1
As you can see, it already knows how to spaceship numbers. That means that we can sort an array of numbers like this:

numbers = [ 8, 7, 11, 98, 42, 1, 74 ]

sorted = numbers.sort
# [ 1, 7, 8, 11, 42, 74, 98 ]
But what if you want to sort instances of Home? We've got to tell sort how to do that. Let's try to sort by capacity:

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end
The sort method can receive a block with two parameters. The parameters are two items in the array to compare. The block should return the result of the comparison. The easiest way to compare two items is by calling the spaceship operator on a method that returns a normal Ruby type like numbers.

You can also sort with strings like a home's name:

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their name
  home1.name <=> home2.name
end
Remember to assign the value of the sort to a variable to be able to use it. Like with the other methods that return a new array, sort leaves the original array untouched.

Other kinds of collections

There are other objects that can be thought of as lists of things. Those objects also have the same collection methods that arrays have.

For example, a range can be thought of as a list of sequental numbers, therefore it has collection methods as well.

rng = 1..42

rng.each do |number|
  puts "The next number in the range is: #{number}"
end

double = rng.map do |number|
  number * 2
end

puts double
Hashes also have collection methods. Some of them work slightly differently though. Take each for example:

hellos = {
  :english => "Hello",
  :spanish => "Hola",
  :french => "Bonjour"
}

hellos.each do |language, word|
  puts "The word for Hello in #{language} is: #{word}."
end
The block receives two values to iterate through: the key and the item. For hashes, each already works a bit like each_with_index.

Recap

Collection methods are there to make it easier to deal with arrays. They all use blocks with different parameters to go about their work. Some methods use the block's return value, others don't. Some methods return a value, others don't.

Important methods we covered:

You can use each for pretty much every task you have to do with arrays.
You can use map to transform all the items in an array to get a new one.
You can use reduce to accumulate a single value from all the items.
You can use select to remove items from an array easily.
You can use find to pick out a single item in an array.
You can use sort to change the order of an array.
It's important to also use methods other than each when appropriate because they are better indicators of the intent of the program. When I see a map, I know that this loop is intended to create a new array. When I see a reduce, I know there is a value being aggregated. When I see an each, it could mean anything. I have to dig into the actual code to understand what it's doing.

Exercise

Put all your collection methods to work with Textbnb, our Airbnb competitor.

Iteration #0: Create an array of homes

Create an array of homes with at least 10 different ones. Make sure to have a mix of values for name, city, price and capacity.

Iteration #1: List of homes

When you run your Textbnb program, use the each from the exercise above to display the homes.

Iteration #2: Sorting

Use sort to order the homes by their price. Lowest to highest should be the default. Instead of having your program end its execution after showing the homes, have it wait for user input. Give the user the option to sort by price but with highest first. Also give the user the option to sort by capacity. Use different calls to the sort method to do all of these.

Iteration #3: Filter by city

Give the user the option to type in a city and only show homes from that city. Use select to achieve this.

Iteration #4: Average

Use a reduce to show the average price of the homes that the user is looking at.

Iteration #5: Name your own price

Finally, give the user the option to enter a price. Use find to retrieve a home with that price to show to them.