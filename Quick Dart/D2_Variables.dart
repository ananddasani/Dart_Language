//Dart Program to see some type of Variables (dataType) we can use generally

void main() {
  //-----------------------------------------------------------------------------
  var name = "anand";
  // name = 12; --> error a var is once assigned then it's DT can't be changed

  if (name is String)
    print("\n$name is string object");
  else
    print("$name is not a string object :(");

  //-----------------------------------------------------------------------------
  Object name2 = 'dasani';
  name2 = 12;
  //so Object can be assigned namy times with different DT

  if (name2 is int)
    print("\n$name2 is a integer");
  else
    print("$name2 is of any other type");

  //-----------------------------------------------------------------------------
  dynamic age = 18;
  age = 'and';
  print("\n$age");
}

/*
OUTPUT

anand is string object

12 is a integer

and
*/
