Instructions:
- In this exercise, you will be planning your strategy for building an OOP-based command-line application with Ruby.
- Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

Gameplay:
- 2 players
- start w 3 lives
- lose a life if answer not correct
- if correct next turn
- end of each turn output scores
- finish when one player has no lives left, winner and scores announced

Nouns/Roles:
- players: state, track score and lives for 2 players
- questions: array of math questions, behaviour is inc score or dec lives
- game: state, tracks player turns, loops game

This project will contain multiple classes. Each class should be defined in its own rb file. You should not put any other code outside the class definition
Define a main.rb file that will require all the other files
Use gets.chomp to get input from users and puts for output
Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
Remember to build incrementally, writing small amounts of runnable code instead of writing out a whole bunch of classes/methods that are not yet testable/runnable.
Use puts, raise some_val.inspect, and byebug to help with debugging
