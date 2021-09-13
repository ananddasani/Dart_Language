//Program to practice loops and conditions in Dart by making number guessing game
import 'dart:io';
import 'dart:math';

void main() {
  //Generate a random number
  Random r = new Random();
  int rNo = r.nextInt(100);
  int guess;

  do {
    //take the guess form the user
    print("Guess the number");
    String? temp = stdin.readLineSync(); //making nullabe
    guess = int.parse(temp.toString()); //String? --> String

    //give hint for choosing accurate number next time
    if (guess < rNo)
      print("$guess is too less");
    else if (guess > rNo) print("$guess is too high");
  } while (guess != rNo);

  print("I was also thinking of $rNo");
}
