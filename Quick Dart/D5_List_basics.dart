//Program to practice List (AKA Array)

void main() {
  List<int> numbers = [
    1,
    2,
    3, // this trailing comma will not throw error instead will help while copy paste by preventing errors
  ];

  var names = ['Anand', 'Om', 'Meet'];

  print(numbers);
  print(names);

  //----------------- other functions ----------------------------

  /*
  Spread operator ==> (...)  ::  you can use to insert all values of list1 into another list2
  Null-aware Spread Operator ==> (...?)  ::  list2 can be null no issue
  */

  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];

  assert(list2.length == 4);
  print("\nYes!! List2.length is 4");

  /*
  Collection if ==> insert element into list by using if condition
  Collection for ==> insert element into list by using for loop
  */
  bool isParkingArea = true;
  var availability = ['Home', 'Furniture', 'Plants', if (isParkingArea) 'car'];

  print("\n");
  print(availability);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  print(listOfStrings);
}

/*
OUTPUT

[1, 2, 3]
[Anand, Om, Meet]

Yes!! List2.length is 4


[Home, Furniture, Plants, car]
[#0, #1, #2, #3]
*/
