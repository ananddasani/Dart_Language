//progam to convert Sting to Int and Double and vice versa

void main() {
  //string --> int
  int one = int.parse("1");
  assert(one == 1);

  //stirng --> double
  double onePointOne = double.parse("1.1");
  assert(onePointOne == 1.1);

  //--------------------------------------------------
  //doule --> string
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == 3.14);

  //int --> string
  String oneAsString = 1.toString();
  assert(oneAsString == 1);

  print("All Asserts works well !!");
}

/*
OUTPUT

All Asserts works well !!
*/
