Ruby Calisthenics

Calisthenics are a form of exercise that consist of a variety of gross motor movements, often rhythmical, generally without using equipment, thus in all essence body-weight training. They are intended to increase body strength, body fitness and flexibility through movements such as pulling or pushing yourself up, bending, jumping, or swinging, using only one's body weight for resistance.

Probably after this long paragraph, you have caught the idea. Today we are going to workout our Ruby muscles, until they are sharp enough to endure the rest of the bootcamp (or at least the rest of the weekend).

You will have to find your way using variables, integers, functions... All the weapons that you learnt during the Pre-Work and that we have reviewed here in our first class.

Also, you will find problems that you can only solve using some kind of Ruby dark magic that you don't know yet. But that's part of the fun! You will have to go through the Ruby Docs, ask to the buddy you are sitting next to or inquire your best friend Google.

So roll up your sleeves and lets get our priced ruby-six-pack!

1. Power

Write a method power that takes in two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

> power(3,4)
=> 81 # (3*3*3*3)
2. Reverse

Write a method that gets a string and return a new string with the same letters in reverse order.

> reverse("You are not going anywhere")
=> "erehwyna gniog ton era ouY"
3. Factorial

Write a method factorial that receives a number and returns the product of every number up to the current number multiplied together.

> factorial(5)
=> 120  # from 1*2*3*4*5
4. Time Conversion

Write a method that gets a number of minutes and returns a string converting those minutes in hours:minutes format.

> time_conversion(500)
=> "8:20"
5. Count Vowels

Write a method that receives a string and returns the number of vowels in that string. You may assume that all the letters are lower cased. You can treat "y" as a consonant.

> count_vowels("hello")
=> 2
6. Uniques

Write a method uniqueness that takes in an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

uniques([1,5,”frog”, 2,1,3,”frog”])
=> [1,5,”frog”,2,3]
7. Is prime

Write a method that receives an integer (greater than one) and returns true if it is prime; otherwise return false.

> is_prime?(7)
=> true
> is_prime?(14)
=> false
8. Palindrome

Write a method that gets a string and returns true if it is a palindrome. A palindrome is a string which reads the same backward or forward. Assume that there are no spaces; only lowercase letters will be given.

> palindrome?("radar")
=> true
> palindrome?("bear")
=> false
9. Capitalize Words

Write a method that receives a string of lowercase letters and spaces, producing a new string that capitalizes the first letter of each word.

capitalize_words("how is the capital today?)
=> "How Is The Capital Today?"
10. Two Sum

Write a method that gets an array of positive and negative numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers. If no pair of numbers sums to zero, return nil. And if more than two pairs fits the condition, return the first one that appears.

two_sum([2, -5, 10, 5, 4, -10, 0 ])`
=> [1,3]
11. Greatest Common Factor

Write a method that takes in two numbers. Return the greatest integer that evenly divides both numbers. You may wish to use the % modulo operation.

greatest_common_factor(12, 16)`
=> 4
12. Print Polynomials

A polynomial is an expression consisting of variables (or indeterminates) and coefficients, that involves only the operations of addition, subtraction, multiplication, and non-negative integer exponents. An example of a polynomial of a single indeterminate x, is: x2 − 4x + 7

Write a method that pretty-prints polynomials, following some simple rules:

if a coefficient is 1, it doesn’t get printed
if a coefficient is negative, you have to display something like “- 2x\^3″, not “+ -2x\^3″
if a coefficient is 0, nothing gets added to the output
for x\^1 the \^1 part gets omitted
x\^0 == 1, so we don’t need to display it
polynomial([-3,-4,1,0,6])`
=> -3x^4-4x^3+x^2+6
Don’t concern yourself too much with error handling, but if somebody tries to create a polynomial with less than 2 elements, your program has to raise an error with the message “Need at least 2 coefficients.”