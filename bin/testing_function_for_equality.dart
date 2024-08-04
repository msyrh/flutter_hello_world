void foo() {} // a top level functoin

class A {
  static void bar() {} // a static method
  void baz() {} // an instance method
}

void main() {
  Function x;

  // comparing top level functioin
  x = foo;
  assert(foo == x);

  // comparing static method
  x = A.bar;
  assert(A.bar == x);

  // comparing instance methods
  var v = A(); // instance #1 of A
  var w = A(); // instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2)
  // so they're equal.
  assert(y.baz == x);

  // these closures refer to different instance
  // so they're unequal
  assert(v.baz != w.baz);
}
