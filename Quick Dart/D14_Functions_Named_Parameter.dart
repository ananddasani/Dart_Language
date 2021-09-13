//The named parameter is optional unless it is marked as Required

// you have to specify named parameter as --> paraName : Value while calling function

int add({required int a, required int b}) {
  return a + b;
}

void main() {
  int n1 = 10;
  int n2 = 10;

  int ans = add(a: n1, b: n2);
  print(ans);
}
