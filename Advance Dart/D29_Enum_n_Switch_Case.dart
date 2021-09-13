/*
Program to Demonstrate that if you use switch case along wiht enum,
you have to handle all the values of enum else you will get the warning
*/

enum Color { Red, Green, Blue }

void main() {
  var aColor = Color.Blue;

  switch (aColor) {
    //missing case clause for Red, or try adding default clause --> waring
    case Color.Red:
      print("Red as Rose !");
      break;

    case Color.Green:
      print("Green as Grass !");
      break;

    default:
      print(aColor);
  }
}

/*
OUTPUT

Color.Blue
*/
