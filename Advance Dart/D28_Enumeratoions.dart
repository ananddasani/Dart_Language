/*
Program to demonstrate enums in Dart
*/

//Don't use semi cloln
//Seprate it with comma
//Don't use = sign

import 'D25_Interface.dart';

enum Color { Red, Green, Blue }

void main() {
  //starts wiht index 0 by  default
  assert(Color.Red.index == 0);
  assert(Color.Green.index == 1);
  assert(Color.Blue.index == 2);

  //Get a list of all the enum values by Value Constant
  List<Color> colorList = Color.values;
  assert(colorList[2] == Color.Blue);

  print("All Assert Conditions are True :)");
}

/*
OUTPUT

All Assert Conditions are True :)
*/
