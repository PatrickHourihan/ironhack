Tic Tac Toe

Remember Tic Tac Toe?

If we go to Wikipedia it says:

Tic Tac Toe Is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.

It involves a couple of players, a simple board, some turns... all the conditions that make it a fun little problem to solve. Let's build it!

Usually we give you some hints about how to start, what to create first, etc. But this time we want to see how far you can go on your own (Or maybe we just feel a bit lazy...).

If you think you are completely lost, go to your TA and ask for some guidance. But part of the purpose of this exercise is to feel the frustration of not knowing where to start or what to do next, to acknowledge it and to learn how to live with it. This feeling will be our party friend for the rest of the Bootcamp.

So let's see how your creativity muscles work. We will be ready to evaluate the results Next Tuesday...

Tic-tac-toe game player.
    Input the index of where you wish to place your mark at your turn.

 1 | 2 | 3
---+---+---
 4 | 5 | 6
---+---+---
 7 | 8 | 9
>>> Put your X in any of these positions: 123456789
>>> 1
You went at 1
 X | 2 | 3
---+---+---
 4 | 5 | 6
---+---+---
 7 | 8 | 9
I go at 5
 X | 2 | 3
---+---+---
 4 | O | 6
---+---+---
 7 | 8 | 9
>>> Put your X in any of these positions: 2346789
>>> 7
You went at 7
 X | 2 | 3
---+---+---
 4 | O | 6
---+---+---
 X | 8 | 9
I go at 9
 X | 2 | 3
---+---+---
 4 | O | 6
---+---+---
 X | 8 | O
>>> Put your X in any of these positions: 23468
>>> 4
You went at 4
 X | 2 | 3
---+---+---
 X | O | 6
---+---+---
 X | 8 | O

X wins across [1, 4, 7]