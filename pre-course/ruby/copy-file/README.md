Exercise - Copy a file

We’re going to make a small program that takes text from one file and writes it to a new file. We will let the user decide which file to take the text from and what to name the new file. Then our program will create the new file, write the text in the new file, and save it as the name the user provided. The program will run in the terminal.

The first step is the need to prepare two files that will be the source files the user can choose from.

Create a new file in Sublime Text and call it source1.txt. In this file write “Hello from source file 1”
Create a second file called source2.txt. In this file, write “Hello from source file 2”. (You can be more creative with the texts if you want).
Now create a third file called exercise.rb. This is where we’ll write our script. Notice that it ends in .rb and not .txt. This means that Ruby will be able to run this file as a script.
These three files should all be in the same folder.
This is what we want our program to look like to the user:

What is the source file?
User writes down his/her choice. After the user chooses the source file,

What is the destination file?
After the user names the destination file, they will magically have a new file with the name they chose, and the content of the file is the text of the source file they chose.

Let’s make this happen!

(1) First we need to ask the user to choose the source file. Do you remember how to print text to the terminal?

puts “What is the source file?”
(2) Next we need to get and save the user’s response. For saving data, we need a variable. To get the user input, we use gets.chomp.

source_file = gets.chomp
(3) Now we need to ask the user what they want to call the destination file. Write this part on your own. You need to print the question, get the answer, and save it as a variable.

(4) So we know what the source file is, but we need to get the contents. We’ll save the contents as a new variable.

source_file_contents = IO.read(source_file)
(5) We now have three variables: source_file, source_file_contents, and destination_file (or whatever you named this variable). Now we need to create a new file with the correct name and the correct contents. The method you should use is IO.write and it is structured like this:

IO.write(file_name, file_contents)  
 #replace file_name and file_contents with the correct variables
Write the last line of the script yourself, using this method and the variables you’ve created.

(6) Let’s check and see if it works! In your terminal, make sure you are in the correct folder, where the files for this exercise are saved. To run the script, type:

ruby exercise.rb
Answer the questions, and then type open and the name of the destination file. That should open your new file and you can check to see if the correct text is there.