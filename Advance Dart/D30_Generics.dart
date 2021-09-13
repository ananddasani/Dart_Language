//program to demonstrate Generics in Dart

//generic class
class Shouter<T> {
  int numberOfTimes = 0;
  T? thingToShout;

  Shouter(this.numberOfTimes, this.thingToShout);

  void shout() {
    for (int i = 0; i < numberOfTimes; i++) {
      print(thingToShout);
    }
  }
}

void main() {
  Shouter<int> myShouter = new Shouter(10, 34);
  myShouter.shout();
  print("");

  Shouter<String> myShouter2 = new Shouter(10, "Hello Anand Here !!");
  myShouter2.shout();
}

/*
OUTPUT

34
34
34
34
34
34
34
34
34
34

Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
Hello Anand Here !!
*/
