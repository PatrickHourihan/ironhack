Programming Languages Collections Exercise

The Premise

Collections are one of the most important pieces of beginning your programming journey. It's highly important that we learn some of the more important ones and how they work very well, and what better way to do this than through pair programming?

Let's create a way to keep track of the history of some other programming languages. We're going to create a simple ProgrammingLanguage class, along with a list of programming languages, and explore some cool, useful collection methods to go along with it.

The documentation is one of the most important tools in your toolbelt, no matter what language you use. Not only does it explain what methods you have and how to use them, it can save you time. Imagine you went through the task of creating a custom sort for a list of words that you have. You spend hours laboring over what kind of sort to use, how it works, and a host of other issues. Lo and behold, after hours of laboring you check out the ruby docs. Oh....sort is already a method in Ruby, and I can customize it however I please. The lesson learned in this situation, a lot of immensely difficult and common problems are already solved for you in Ruby.

In this exercise, every method you will use will be present in two sections of the official documentation:

Enumerable 
Array

Navigator, pop open both of these tabs in chrome, you're going to use them as reference to guide your driver through using these different array methods.

Driver, open a brand new file and get ready to start typing. Keep in mind, the navigator should be guiding your way though.

Setup

First, create a basic ProgrammingLanguage class. We're going to keep this simple, because what we really want to focus on are the collection methods.

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end
Let's also create a bunch of different programming languages to stuff into an array and toy around with.

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")
And then our array that we're going to manipulate throughout this exercise:

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
Each

http://ruby-doc.org/core-2.2.3/Array.html#method-i-each

Let's start by creating a simple function to output each element in an array. We're going to be using this for the rest of this exercise. This function will receive an array, and it will simply output each element in that array.

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end
Then if we call this method with our array_of_languages

array_printer(array_of_languages)
We should have our list of languages output to the screen.

With every different array method, create a new array with that method, and then call the array_printer function to display it to the screen.

Map

http://ruby-doc.org/core-2.2.3/Array.html#method-i-map

Pretend it's the new year, map our array into a new array with the programming language's age increased by one, and then output it to the screen with our array printer method.

aged_languages = array_of_languages.map #Your code goes here
puts "The programming languages aged one year are: "
array_printer(aged_languages)
# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static
Sort

http://ruby-doc.org/core-2.2.3/Array.html#method-i-sort

Create a new array of programming languages sorted by their age, from oldest to newest. Output this array to the screen. Hmm, it looks like calling .sort on this array by default throws an error. Why? What can we do about this?

Desired Output:

# The programming languages sorted by age are:
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Java |  Age: 21 |  Type System: Static
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
Switch Positions

Driver / Navigator switch roles. Navigator, make sure you have the documentation open.

Delete

Check out both of these array methods:

http://ruby-doc.org/core-2.2.3/Array.html#method-i-delete_if 
http://ruby-doc.org/core-2.2.3/Array.html#method-i-delete_at

What's the difference between the two? Pick one, and create a new array without Java in it, because nobody likes Java(Jokes).

Shuffle

http://ruby-doc.org/core-2.2.3/Array.html#method-i-shuffle

Our sorted array is too neat. Take the array that you previously sorted and use the shuffle method. Shuffle is quite handy sometimes.

Pick your own

It's always a good idea to browse the docs for something you might use in the future. Pick three other array methods from the list that might be useful in the future. How do you use it? When would you use it? Name a situation where you would.

Test them out on the array of programming languages, or in pry.

Bonus Research

If you check out all of the array methods, you have a version of the method with an exclamation point. For instance, when I say

array_of_languages.map! { | language | language.name += "!!!"}
What does it do? Why?