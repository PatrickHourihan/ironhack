Three Doors Exercise

Learning checklist

These are the commands you should know and understand before starting the exercise:

git init
git add
git status
git commit
git log
git diff
git checkout
git merge
Exercise: Three doors

Have you done the tutorials? Checked off everything on your learning checklist? Then it’s time to try an exercise with Git.

Using what you just learned in the guides, let's try to make our first Git repository (repo for short) and see what Git can do.

Your first repo

Make a new folder and call it git-practice. Initialize a Git repo.
Make a new text file and called three_doors.txt and copy the following text in it: You are in a room with three doors.
Add and commit the changes with the message "first commit".
Write the next sentence in the text file: Which door will you go through?
Check the status of your Git repo
Commit the changes, preferably with a descriptive message.
Check the log to see if the changes were committed correctly.
Alternate realities

Write some more changes in the file - write down which door you choose to enter.
Use git diff to see the changes you just made.
Write the output of the diff in a file called first_choice.txt and commit only that file.
Discard the changes you made in three_doors.txt.
Create a third file called second_choice.txt, add some text to it - this time, choose a different door.
Commit second_choice.txt.
Write some changes in that file - for example, what is behind the door? - and commit it again.
Rewriting history

Make a new branch called new from your current branch.
In the new branch, go to the second_choice.txt file and write an alternative for what you found behind the door. Commit those changes.
Merge the new branch changes into the original branch.