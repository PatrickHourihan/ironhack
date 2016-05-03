FizzBuzz

Problem Description

Imagine the scene. You are eleven years old, and in the five minutes before the end of the lesson, your Maths teacher decides he should make his class more "fun" by introducing a "game". He explains that he is going to point at each pupil in turn and ask them to say the next number in sequence, starting from one. The "fun" part is that if the number is divisible by three, you instead say "Fizz" and if it is divisible by five you say "Buzz". So now your maths teacher is pointing at all of your classmates in turn, and they happily shout "one!", "two!", "Fizz!", "four!", "Buzz!"... until he very deliberately points at you, fixing you with a steely gaze... time stands still, your mouth dries up, your palms become sweatier and sweatier until you finally manage to croak "Fizz!". Doom is avoided, and the pointing finger moves on.

So, of course, in order to avoid embarrassment in front of your whole class, you have to get the full list printed out so you know what to say. Your class has about 33 pupils and he might go round three times before the bell rings for breaktime. Next maths lesson is on Thursday. Get coding!

The exercise

Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

Sample output:

1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
... etc up to 100
Hint:

You will need to use the math operator % which gives you the remainder of a division. For example:

10 % 3
 # returns 1

10 % 5
 # returns 0
Iteration 2

You probably used a loop to do this, right? One of the fantastic things about Ruby and about programming in general is that there are usually several ways to solve a problem. Try to rewrite your solution using a different kind of loop. For example, if you used a for loop, try doing it with #each or while.

Iteration 3

Add a new condition: if the number starts with the number 1, add “Bang” to the result. So for example, now your output should look like this:

Bang
2
Fizz
4
Buzz
Fizz
7
8
Fizz
BuzzBang
… etc. until 100
Iteration 4

It’s getting harder and harder to add new conditions! An endless chain of elsif conditions is messy and difficult to maintain. Rewrite your code to make it simpler (this is called “refactoring”).

Start by deleting all of the if/elsif/else from your loop. Create a variable inside your loop that represents the number or string that will be printed. We can call it result. For now, it will just be an empty string.

result = ""
Now, write some conditions that dictate what will be saved in this variable. As you might remember, we can concatenate strings (add them together) using the + operator. For example:

if num % 3 == 0
  result = result + "Fizz"
end
There is another way to do this. The shovel operator << can be used to concatenate strings. So we can also rewrite the previous statement like this:

if num % 3 == 0
  result << "Fizz"
end
Write the rest of the if statements for the conditions we’ve set. Don’t forget to print the result.