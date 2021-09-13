//Programm to practice short hand function by making a simple calculator

import 'dart:io';

//short hand functioins
int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
int div(int a, int b) => a ~/ b;

void main() {
  print("\n1. Addition\n2. Sutraction \n3. Multiplication \n4. Division");
  stdout.write("Enter your choice :: ");
  String temp = stdin.readLineSync().toString();

  int? ch; //nullable ch

  try {
    ch = int.parse(temp);
  } on FormatException {
    print("\nUh !! can't be parshed, Give valid input :(");
    return;
  }

  //invalid choice means user wants to quit
  if (ch != 1 && ch != 2 && ch != 3 && ch != 4) {
    print("Invalid Choice $ch so exiting...");
    return;
  }

  //taking 2 numbers from the user
  stdout.write("\nEnter first number :: ");
  temp = stdin.readLineSync().toString().toUpperCase();
  int n1 = int.parse(temp);
  stdout.write("Enter second number :: ");
  temp = stdin.readLineSync().toString().toUpperCase();
  int n2 = int.parse(temp);

  //calculating the answer
  switch (ch) {
    case 1:
      print("$n1 + $n2 = ${add(n1, n2)}");
      break;
    case 2:
      print("$n1 - $n2 = $sub(n1, n2)");
      break;
    case 3:
      print("$n1 X $n2 = $mul(n1, n2)");
      break;
    case 4:
      print("$n1 / $n2 = $div(n1, n2)");
      break;
  }
}
