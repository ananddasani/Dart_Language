//Program to demonstrate abstract mehtod and class in Dart

abstract class Person {
  String? name;
  int? age;

  //Abstract method
  void greet(String from);
}

class Boy extends Person {
  //missing concrete implementation of Person.greet ERROR
  @override
  void greet(String? from) {
    print("Hello!! from $from");
  }
}

void main() {
  // Person person = new Person(); Abstract Calsses can't be instantiated ERROR
  Boy me = new Boy();
  me.name = "Anand";
  me.age = 18;

  me.greet(me.name);
}

/*
OUTPUT

Hello!! from Anand
*/
