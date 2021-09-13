//Program to Demonstrate Static Method

import 'dart:math';

class Point {
  double x, y;

  Point(this.x, this.y);

  //this static method can be invoked by class name (without using object and . operator)
  static double distance(Point a, Point b) {
    double dx = a.x - b.x;
    double dy = a.y - b.y;

    return sqrt((dx * dx) + (dy * dy));
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);

  //calling directly using class name no need to use object name for static methods
  var distance = Point.distance(a, b);
  assert(2.8 < distance || distance < 2.9);
  print("distance is $distance");
}

/*
OUTPUT

distance is 2.8284271247461903
*/
