/*
Program to demonstrate that everything in dart is a reference to object

Mulitply variables refers to same object
*/

void addAnimal(List<String> myList) {
  myList.add("Mouse");
}

void main() {
  //------------------ Example 1 -------------------------------------
  List<String> animalList1 = ["Antelope", "Cat", "Dogs"];
  List<String> animalList2 = animalList1;

  animalList2.add("Rabbit");
  print(
      animalList1); //Rabbit is added to List1 also because both list points to same reference

  //------------------ Example 1 -------------------------------------
  List<String> list = ["Watermelom"];
  addAnimal(list);
  print(
      list); // mouse is added :) [pass by reference instead of pass by variable]
}

/*
OUTPUT

[Antelope, Cat, Dogs, Rabbit]
[Watermelom, Mouse]
*/
