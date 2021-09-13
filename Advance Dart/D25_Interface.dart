/*
Program to Demonstrate Multiple Inheritance (Nothing but Interface) in Dart

The only requirement is the class that implement another class's interface must implement it completly
*/

//Super Class (Interface)
class A {
  void silly() {
    print("A's Silly");
  }
}

//Super Class (Interface)
class B {
  void awesome() {
    print("B's Awesome");
  }
}

// Implementing interface A, B
class C implements A, B {
  //Missing Concrete implementation of A.silly and B.awesome
  void silly() {
    print("C's Silly");
  }

  void awesome() {
    print("C's Awesome");
  }
}

//Subclass of B and Implement interface A
class D extends B implements A {
  //Missing Concrete implementation of A.silly
  void silly() {
    print("D's Silly");
  }
}

void main() {
  A c = new C(); //kind of polymorphism

  c.silly(); // prints C's Silly
  // c.awesome(); // Errot awesome isn't defined for type A
  (c as C).awesome(); //prints C's awesome

  D d = new D(); //Pure D
  d.awesome(); //Prints B's awesome
  d.silly(); //prints D's Silly
}

/*
OUTPUT

C's Silly
C's Awesome

B's Awesome

D's Silly
*/
