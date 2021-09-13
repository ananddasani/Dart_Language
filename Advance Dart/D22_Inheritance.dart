//Program to Demonstrate Inheritance in Dart

//this is a super class
class WrittingInstrument {
  int lifeRemaining = 100;
  String color = "Black";

  write(String toWrite) {
    if (lifeRemaining <= 0) return;

    print(toWrite);
    lifeRemaining--;
  }
}

//inherited (now all are sub class)
class Pen extends WrittingInstrument {
  void explode() {
    print("\nInk Everywhere!!");
    lifeRemaining = 0;
  }
}

//inherited
class Pencil extends WrittingInstrument {
  int eraseLife = 100;

  void erase(String toErase) {
    if (eraseLife <= 0) return;

    print("Removed $toErase");
    eraseLife--;
  }
}

void main() {
  Pen pen = new Pen();
  Pencil pencil = new Pencil();
  WrittingInstrument wi = new WrittingInstrument();

  // print(pen.color); // default getter
  pen.color = "Blue"; // defult setter

  print("\nColor of pen :: ${pen.color}");

  pen.write("\nHello from Pen!!");
  pencil.write("Hii form Pencil!!");

  pen.explode();
  // pencil.explode();  this is illegeal (pencil doesn't know explode)

  //now exploded so can't write
  pen.write("\nHello from Pen again!!");
  pencil.write("Hii form Pencil again!!");

  //checking inheritance
  print("");
  print(pen is WrittingInstrument); // prints true;
  print(pencil is WrittingInstrument); //print ture;

  print("");
  print(wi is Pen); // prints false
  print(wi is Pencil); // prints false
  print(wi is WrittingInstrument); // prints true
}

/*
OUTPUT

Color of pen :: Blue

Hello from Pen!!
Hii form Pencil!!

Ink Everywhere!!
Hii form Pencil again!!

true
true

false
false
true
*/
