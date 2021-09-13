/*
Method 1) Program to get object's type
Method 2) By using type test operator --> as, is, is!
*/

class Person {
  String name = "Anand";
}

class Employee extends Person {
  work() {
    print("Software Engineering");
  }
}

class Animal {
  String breed = "Insect";
}

void main() {
  Employee employee = new Employee();
  Animal animal = new Animal();

  print("The run-type of object employee is ${employee.runtimeType}.");

  if (employee is Person) print("\nemployee is Person");

  if (animal is! Person) print("animal is NOT Person");

  //type case animal to person and assgn name as dog
  print("\nTypeCasting animal to Person...");

  try {
    (animal as Person).name = "Dog";
  } on TypeError catch (e) {
    print("Can't Type Cast");
    print("Becaue $e");
  }
  // animal.name = "Dog";  --> have to type case
}

/*
OUTPUT

The run-type of object employee is Employee.

employee is Person
animal is NOT Person

TypeCasting animal to Person...
Can't Type Cast
Becaue type 'Animal' is not a subtype of type 'Person' in type cast
*/
