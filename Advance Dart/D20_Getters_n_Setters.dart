//Program to use getter and setter access and mdofiy the property of class

import 'dart:io';

class Dice {
  int _sides = 0;
  int numberOfDice = 2;
  // List<int> _values = [1, 2, 3, 4, 5, 6];

  /*
  using to getter and setter --> get, set
  --> setter have no return value only parameter
  --> getter have only return value no parameter
  */

  set setSides(int s) {
    _sides = s;
  }

  int get getSides => _sides;
  int get getNumberOfDices => this.numberOfDice;
  int get getMaxSide => _sides * numberOfDice;
}

void main() {
  Dice d = new Dice();

  stdout.write("Side of Dice is :: ");
  print(d.getSides);

  print("\nSetting Dice's side to 6...");
  d.setSides = 6;

  stdout.write("Now Side of Dice is :: ");
  print(d.getSides);

  stdout.write("\nNumber of Dices is :: ");
  print(d.getNumberOfDices);

  stdout.write("Total number of Sides is :: ");
  print(d.getMaxSide);
}

/*
OUTPUT

Side of Dice is :: 0

Setting Dice's side to 6...
Now Side of Dice is :: 6

Number of Dices is :: 2
Total number of Sides is :: 12
*/
