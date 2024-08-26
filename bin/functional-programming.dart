import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

void main(List<String> args) {
  // first class function -> Fungsi diperlakukan sebagai nilai pertama di mana fungsi dapat disimpan dalam variabel, diteruskan sebagai argumen, atau dikembalikan dari fungsi lain.
  // mendefinisikan function
  var multiply = (int a, int b) => a * b;
  // menggunakan function
  print(multiply(2, 3));
  // function sebagai argument
  void printResult(int Function(int, int) operation, int x, int y) {
    print(operation(x, y));
  }

  printResult(multiply, 4, 5);

  // immutability -> Data bersifat immutable berarti setelah data dibuat, ia tidak dapat diubah. Modifikasi data melibatkan pembuatan salinan data dengan perubahan yang diperlukan.
  // menggunakaln list immutable
  var originalList = [1, 2, 3];
  var newList = [...originalList, 4]; // membuat list baru
  print(newList);

  // contoh dengan map
  var originalMap = {'a': 1, 'b': 2};
  var newMap = Map.from(originalMap)..['c'] = 3;
  print(newMap);

  // pure functions -> Fungsi yang hasilnya hanya bergantung pada input yang diberikan dan tidak menyebabkan efek samping di luar fungsinya.
  int square(int number) => number * number;
  // square adalah pure function karena hanya bergantung pada input number dan tidak mengubah keadaan luar
  int add(int a, int b) => a + b;
  List<int> doubleValues(List<int> values) {
    return values.map((value) => value * 2).toList();
  }

  var a = doubleValues(originalList);
  print(a);

  // Higher - order functions -> fungsi yang menerima funcsi lain sebagai argumen atau mengembalikan fungsi sebagai hasil
  // fungsi higher dapat menerima fungsi lain sebagai argument
  List<int> applyOperation(List<int> list, int Function(int) operation) {
    return list.map(operation).toList();
  }

  List<int> numbers = [1, 2, 3];
  List<int> squared = applyOperation(numbers, (x) => x * x);
  print(squared);

  // dalam flutter
  var items = ['apple', 'banana', 'cherry'];
  var capitalizedItems = items.map((item) => item.toUpperCase()).toList();
  print(capitalizedItems);

  // declarative ui
  // Pendekatan di mana Anda mendefinisikan UI sebagai hasil dari state, bukan cara UI diperbarui. Anda menggambarkan apa yang harus ditampilkan daripada bagaimana cara menampilkannya.
  // class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Declarative UI Example'),
  //       ),
  //       body: Center(
  //         child: Text('Hello, Flutter!'),
  //       ),
  //     ),
  //   );
  // }

  // using libraries and functional construct
  //    - **`dartz`**: Pustaka untuk struktur data fungsional seperti `Option`, `Either`, dan `Tuple`.
  //    - **`rxdart`**: Pustaka untuk pemrograman reaktif yang berbasis pada stream dan observables.
  Option<int> someValue = some(5); // Create an Option with a value
  Option<int> noneValue = none(); // Create an Option without a value
  // Handling the case where the value is present
  someValue.fold(() => print('No value'),
      (value) => print('value: $value')); // Output: Value: 5
  noneValue.fold(() => print('No Value'),
      (value) => print('value: $value')); // Output: No Value

  final subject = BehaviorSubject<int>();
  subject.listen((value) => print('Value: $value'));
  subject.add(1);
  subject.add(2);
  subject.add(3);
  subject.close();
}
