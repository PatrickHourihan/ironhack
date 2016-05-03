Caesar cipher

Problem Description

In cryptography, a Caesar cipher (also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift) is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Cipher of 3

So imagine yourself as a Roman soldier at your camp trying to get a promotion. You are sitting in front of you brand new terminal from year 10 B.C. with your shiny new version of Ruby and want to automate the process of doing a Caesar Cipher.

First iteration

We're going to start by writing a function to solve a Caesar Cipher of with a left shift of 1. So we'll need to write a function that takes the encrypted message (just one word) and returns the unencrypted message. For example:

def solve_cipher(input)
  #your code goes here
end

solve_cipher("ifmmp")
# should return "hello"
Hints

Take a look at the String method #ord and the Integer method #chr in the Ruby Documentation. Use Pry to experiment with them, ex. "a".ord.
You will need to split the message into an array of individual letters and iterate over the array (we learned about this in Logical operators and flow control
What happens if one of the letters in the message is "a"? If we use the #ord method, with a left shift of 1, "a" would become a special character. We want it to become "z". How can you fix this?
Second iteration

Now, add a second parameter to the function so that the shift can be of any size. Positive numbers shift right and negative numbers shift left. We also want to be able to send and decipher longer messages, so think about what to do with spaces. Can you solve the following?

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
Third iteration

Since Caesar always used a left shift of 3, make that the default parameter.