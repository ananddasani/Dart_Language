/*
Program to make a game of Rock Paper Scissor TO practice Functions in Dart

Rock Beats Scissor
Scissor Beats Paper
Paper Beats Rock

Take Move from User and compare with Computer's move and prompt who won
if There is tie then quite the game
or user can quit game by giving invalid input
*/

import 'dart:io';

import 'dart:math';

String getPlayerMove() {
  //Show the move menu to the user and take his/her choice of move
  print("\n(R)ock , (P)aper , (S)cissor");
  stdout.write("Enter Your Move :: ");
  String move = stdin.readLineSync().toString().toUpperCase();

  switch (move) {
    case "R":
      move = "Rock";
      break;

    case "P":
      move = "Paper";
      break;

    case "S":
      move = "Scissor";
      break;

    default:
      move = "Quit";
      break;
  }
  return move;
}

String getComputerMove() {
  //randomly generate the computer move
  Random r = new Random();
  int rdNo = r.nextInt(2); // 0, 1, 2
  String move;

  switch (rdNo) {
    case 0:
      move = "Rock";
      break;

    case 1:
      move = "Paper";
      break;

    case 2:
      move = "Scissor";
      break;

    default:
      move = "Quit";
      break;
  }
  return move;
}

String whoWon(String playerMove, String computerMove) {
  if (computerMove == playerMove)
    return "Tie";
  else if (playerMove == "Rock" && computerMove == "Scissor")
    return "You Win !!";
  else if (playerMove == "Scissor" && computerMove == "Paper")
    return "You Win !!";
  else if (playerMove == "Paper" && computerMove == "Rock")
    return "You Win !!";
  else
    return "Computer Win :(";
}

void main() {
  while (true) {
    print("\nRock Paper Scissor Shoot !!");
    String playerMove = getPlayerMove();

    //if player wants to quit
    if (playerMove == "Quit") {
      print("\nInvalid Option means Quit\nExiting the game...");
      return;
    }

    //else show the result
    print("\nYou Played $playerMove");

    String computerMove = getComputerMove();
    print("Computer Played $computerMove");

    print(whoWon(playerMove, computerMove));
  }
}

/*
OUTPUT

Rock Paper Scissor Shoot !!

(R)ock , (P)aper , (S)cissor
Enter Your Move :: r

You Played Rock
Computer Played Paper
Computer Win :(

Rock Paper Scissor Shoot !!

(R)ock , (P)aper , (S)cissor
Enter Your Move :: p

You Played Paper
Computer Played Rock
You Win !!

Rock Paper Scissor Shoot !!

(R)ock , (P)aper , (S)cissor
Enter Your Move :: s

You Played Scissor
Computer Played Paper
You Win !!

Rock Paper Scissor Shoot !!

(R)ock , (P)aper , (S)cissor
Enter Your Move :: quit

Invalid Option means Quit
Exiting the game...
*/
