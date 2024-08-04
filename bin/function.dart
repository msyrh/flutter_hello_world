// example functioin

bool isNoble(int atomicNumber) {
  var _nobleGases;
  return _nobleGases[atomicNumber] != Null;
}
// recomend
// isNoble(atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

// short hand
var _nobleGases;
bool isNooble(int atomicNumber) => _nobleGases[atomicNumber] != Null;

// Parameter
/// Sets the [bold] and [hidden] flags ...
bool enableFlags({bool? bold, bool? hidden}) {
  return true;
}

// default value param
/// Sets the [bold] and [hidden] flags ...
void enableFlags1({bool bold = false, bool hidden = false}) {}

// required param
// const Scrollbar({super.key, required Widget child});
// const Scrollbar({super.key, required Widget? child}); // required juga bisa nullable

// optional param
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String say1(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';

  return result;
}

// function as first class object
void printElement(int element) {
  print(element);
}

// also asign function to avariable
var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

// anonymous function
// ([[Type] param1[, ...]]) {
//   codeBlock;
// }
// example
const list = ['apples', 'bananas', 'oranges'];
var uppercaseList = list.map((item) {
  return item.toUpperCase();
}).toList();
// in single line
var uppercaseList1 = list.map((item) => item.toUpperCase()).toList();

// lexical scope
bool topLevel = true;

void s() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

// lexical clsures
// A function object that can access variables in its lexical scope when the function sits outside
// that scope is called a closure.
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void t() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}

// tear-offs
var charCodes = [68, 97, 114, 116];
var buffer = StringBuffer();

// return values
foo() {}

// return multiple values
// (String, int) foo1() {
//   return ('Something', 42);
// }

// generator
// When you need to lazily produce a sequence of values, consider using a generator function. Dart has built-in support for two kinds of generator functions:
// Synchronous generator: Returns an Iterable object.
// Asynchronous generator: Returns a Stream object.
// To implement a synchronous generator function, mark the function body as sync*, and use yield statements to deliver values:
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

// To implement an asynchronous generator function, mark the function body as async*, and use yield statements to deliver values:
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

// If your generator is recursive, you can improve its performance by using yield*:
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

// external function
external void someFunc(int i);

// and when calling
void main() {
  // how to call
  enableFlags(bold: true, hidden: false);
  // bold will be true; hidden will be false.
  enableFlags1(bold: true);
  // calling func wuthout the optional parameter
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  // calling func with the third parameter
  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');
  assert(say1('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

  var list = [1, 2, 3];
  list.forEach(printElement);
  assert(loudify('hello') == '!!! HELLO !!!');

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }
  uppercaseList1.forEach((item) => print('$item : ${item.length}'));

  s();
  t();

  // good
  // Function tear-off
  charCodes.forEach(print);

  // Method tear-off
  charCodes.forEach(buffer.write);

  // bad
  // Function lambda
  charCodes.forEach((code) {
    print(code);
  });

  // Method lambda
  charCodes.forEach((code) {
    buffer.write(code);
  });

  assert(foo() == null);
}
