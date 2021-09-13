/*
program to practice named constructor

Just because Dart don't support same name of 2 methods (method overloading) even though
parameter is not same

so constructor is too not allowed so if you want to create different type of objects
at the time of initiallization then you obviously need overloaded constructors

so the solution is to use named constructor which is kind of overloaded constructor
but used by the property name and . operator
*/

import 'dart:io';

class Temperature {
  double? degreeKelvin;

  Temperature(this.degreeKelvin);

  Temperature.fromCelcisus(double degreeCelcisus) {
    degreeKelvin = degreeCelcisus + 273.15;
  }

  Temperature.fromFahrenheit(double degreeFarenheit) {
    degreeKelvin = (5 / 9) * (degreeFarenheit - 32) + 273.15;
  }
}

void main() {
  Temperature T = new Temperature(1);
  stdout.write("(1) Kelvin -->  ");
  print(T.degreeKelvin);

  Temperature C = new Temperature.fromCelcisus(1);
  stdout.write("From (1) Celcisus --> Kelvin :: ");
  print(C.degreeKelvin);

  Temperature F = new Temperature.fromFahrenheit(1);
  stdout.write("From (1) Fahrenheit --> Kelvin :: ");
  print(F.degreeKelvin);
}

/*
OUTUPT

(1) Kelvin -->  1.0
From (1) Celcisus --> Kelvin :: 274.15
From (1) Fahrenheit --> Kelvin :: 255.92777777777775
*/
