import 'dart:io';

import 'dart:math';

enum Moves { Rock, paper, Scissors }

void main() {
  final randomMoves = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s):');
    final input = stdin.readLineSync();
    // -----------------if input right move------------------------
    if (input == 'r' ||
        input == 'R' ||
        input == 'p' ||
        input == 'P' ||
        input == 's' ||
        input == 'S') {
// ---------------------------user & AI input --------------------------
      var userInput;
      var aiInput = Moves.values[randomMoves.nextInt(3)];
      // ---------------------if user enter a specific move-----------------------
      if (input == 'r' || input == 'R') {
        userInput = Moves.Rock;
      } else if (input == 'p' || input == 'P') {
        userInput = Moves.paper;
      } else {
        userInput = Moves.Scissors;
      }

      print('You selected:$userInput');
      print('AI select:$aiInput');

      // ------------------comapre movies-------------------------
      if (userInput == aiInput) {
        // if user and AI choose the same move .
        print('It\'s Drow');
      } else if (userInput == Moves.paper && aiInput == Moves.Scissors ||
          userInput == Moves.Scissors && aiInput == Moves.paper ||
          userInput == Moves.Rock && aiInput == Moves.Scissors) {
        // if user win
        print('You Win');
      } else {
        // if you lose
        print('You Lose');
      }

      // ------------------if input Q-----------------------
    } else if (input == 'q' || input == 'Q') {
      break;
    }
    // ------------------if enter invalid input---------------------
    else {
      print('Invalid input');
    }
  }
}

//  the program should show this prompt:
// Rock, paper or scissors? (r/p/s)----ok
// If the user enters "r", "p", or "s", treat this as a valid move.----ok
// If the user enters "q", quit the program.---ok
// If the user enters anything else, show "Invalid input", and prompt again.---ok
