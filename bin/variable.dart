void variable(List<String> arguments) {
  print("variable ---");
  var name = "sarif";
  print("My name is " + name);
  Object nameObject = "bob";
  print(nameObject);
  String nameString = "Syarif";
  print(nameString);

  // Cek nullable variable
  print("Cek nullable variable ---");
  String? nameCanNull;
  String nameCantNull = "My name Can't be Null";
  print(nameCanNull);
  print(nameCantNull);

  // nilai default
  print("nilai default ---");
  int? lineCount;
  // assert(lineCount != null);
  print(lineCount); // null
  int lineCount0 = 0;
  print(lineCount0); // 0

  int lineCount2;
  var weLikeToCount = true;

  if (weLikeToCount == true) {
    lineCount2 = 5;
  } else {
    lineCount2 = 0;
  }

  print(lineCount2); // 5

  // late variable = memberikan nilai secara terlambat
  print("late variable ---");
  late String description;

  description = 'Feijoada!';
  print(description);

  // final (hanya ditetapkan 1 kali ) and constan (ditetapkan waktu kompilasi)
  print("final constant ---");
  final name3 = "Bob";
  final String nickName3 = "Boby";
  // name3 = "alice"; // error karena tidak dapat diubah

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  var foo = const [];
  final bar1 = const [];
  const baz = []; // Equivalent to `const []`

  foo = [1, 2, 3]; // Was const []
  // baz = [42]; // Error: Constant variables can't be assigned a value.

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}
