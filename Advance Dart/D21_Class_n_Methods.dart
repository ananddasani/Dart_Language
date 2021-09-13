//program to demonstrate classes and method in dart

import 'dart:io';

class Rectangle {
  int _lenght = 0;
  int _breath = 0;

  //getter and setters
  set setLength(int length) {
    this._lenght = length;
  }

  set setBreath(int breath) {
    this._breath = breath;
  }

  int get getLenght => this._lenght;
  int get getBreath => this._breath;

  //method
  int area() => (getLenght * getBreath);
}

void main() {
  Rectangle r = new Rectangle();

  r.setBreath = 10;
  r.setLength = 20;

  print("Length :: ${r.getLenght}\nBreath :: ${r.getBreath}");

  stdout.write("Area :: ${r.area()}");
}

/*
OUTPUT

Length :: 20
Breath :: 10
Area :: 200
*/
