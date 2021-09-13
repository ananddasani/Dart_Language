//Program to Practice Set in Dart

void main() {
  Set<String> names = {'Anand', 'Ria', 'Om', 'Meet'};
  print(names);

  // --------------- Ways to create Set --------------------
  var halogens = {"flouring", "Chlorine", "Bromine"};
  print(halogens);

  // var name = {}; // creates map instead of Set

  // -------------- Adding values to the Set --------------------
  names.add('Jemini');
  names.addAll(halogens);
  assert(names.length == 8);
  print(names);

  // ---------------------- Constant Set ---------------------
  // final middleNames = const {'Dasani', 'Sharma'};
  // middleNames.addAll(names); --> Run time error
}

/*
OUTUPT

{Anand, Ria, Om, Meet}

{flouring, Chlorine, Bromine}

{Anand, Ria, Om, Meet, Jemini, flouring, Chlorine, Bromine}
*/
