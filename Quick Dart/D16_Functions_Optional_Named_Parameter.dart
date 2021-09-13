/*
Very similary to positional optional parameter but they are defined & called differently

--> oder doesn't matter when they are called
--> they are defined with curley braces && colon to seprate their name from default value.
*/

void repeat(String word, {int repetation: 1, String exclamation: "!"}) {
  for (int i = 0; i < repetation; i++) print(word + exclamation);
}

void main() {
  // repeat("Anand", repetation: 2, exclamation: '!!'); // valid
  // repeat("Anand", repetation: 2); //valid
  // repeat("Anand", exclamation: "!"); //valid
  repeat("Anand",
      exclamation: "!", repetation: 2); // valid --> order doesn't matter
}

/*
OUTPUT

Anand!
Anand!
*/
