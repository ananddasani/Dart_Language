//Program to Practice Maps in Dart

void main() {
  var gift = {'first': 'Toy', 'second': 'Flower'};
  print(gift);

  //-------- Using Map Constructor ------------------
  var nobleGas = Map<int, String>();
  //-------- Adding new Key:Value to the  Map ------------------
  nobleGas[18] = 'Argon';
  nobleGas[10] = 'Neon';
  nobleGas[2] = "Helium";
  print(nobleGas);

  //-------------- Retreving Values fom Map --------------------
  assert(gift['ninth'] == null);
  assert(nobleGas[2] == 'Helium');

  print("\nAll Asserts Checked !!");

  //------------------- Iterating Through keys and values ----------
  print("\tKeys");
  for (var i in gift.keys) print(i);

  print("\tValues");
  for (var i in gift.values) print(i);
}

/*
OUTPUT

{first: Toy, second: Flower}
{18: Argon, 10: Neon, 2: Helium}

All Asserts Checked !!
        Keys
first
second
        Values
Toy
Flower

*/
