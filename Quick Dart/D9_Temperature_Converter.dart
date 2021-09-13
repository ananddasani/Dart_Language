/*
program to practice stdin, switch by making the temperature converter

F = 1.8C + 32
C = (F – 32) / 1.8
*/
import 'dart:io';

void main() {
  //menu to the user
  print("\nA:Convert Celsius to Fahrenheit\nB:Convert Fahrenheit to Celsius");
  stdout.write("Enter your Choice :: ");
  String? ch;

  do {
    ch = stdin.readLineSync().toString().toUpperCase();
  } while (ch != "A" && ch != "B");

  //now take temperature
  (ch == "A")
      ? stdout.write("\nEnter Temperature in Celsius :: ")
      : stdout.write("\nEnter Temperature in Fahrenheit:: ");
  String T = stdin.readLineSync().toString();
  double temp = double.parse(T);

  switch (ch) {
    case "A":
      print("$temp Celsius = ${1.8 * temp + 32} Fahrenheit");
      break;

    case "B":
      print("$temp Fahrenheit = ${(temp - 32) / 1.8} Celsius");
  }
}
