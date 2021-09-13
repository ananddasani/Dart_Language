//this is a dart Program to print the message to the console in different ways

import 'dart:io';

void main() {
  //printing simple message
  print("\nhello World from Dart");

  //String interpolation: including a variable or expression’s string equivalent inside of a string literal.
  String name = 'Anand';
  print("\nMy name is $name  !!");

  //printing message with some more value
  int a = 20, b = 10;
  print("\n$a + $b = ${a + b}");

  //----------------------------- Taking Input From the user -----------------
  print("\nEnter your name :: ");
  var temp = stdin.readLineSync();
  print("Thanks $temp");
}

/*
OUTPUT

hello World from Dart

My name is Anand  !!

20 + 10 = 30

Enter your name :: anand
Thanks anand
*/
