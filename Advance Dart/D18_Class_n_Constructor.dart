//Program to practice class and constructor in dart

import 'dart:io';

class Rectangle {
  int? length; //initially null
  int? breath;

  //constructor
  Rectangle(this.length, this.breath);
}

void main() {
  Rectangle r = new Rectangle(10, 20);

  stdout.write("Length of Rectangle is ");
  print(r.length);

  stdout.write("Breath of Rectangle is ");
  print(r.breath);
}

/*
OUTUPT

Length of Rectangle is 10
Breath of Rectangle is 20
*/
