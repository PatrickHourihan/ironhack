Word sorting

Problem Description

Write a function that receives a sentence and returns an array with the sentence's words sorted alphabetically. Ignore case and punctuation.

Examples

"Have a nice day." => ["a", "day", "Have", "nice"]
"Fools fall for foolish follies." => ["fall", "follies", "foolish", "Fools", "for"]
"Ruby is a fun language!" => ["a", "fun", "is", "language", "Ruby"]
Recommended approach

First, lets use the sort default method just splitting the sentence into words.
Now, after splitting the array remove punctuation characters.
After that, change the sort method using a custom function that ignores cases when comparing words (you can compare both strings after calling upcase on them), but keeping the capitalized words as they were in the beginning .